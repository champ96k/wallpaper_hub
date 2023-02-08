import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:wallpaper_hub/core/app_config/routes_generator.dart';
import 'package:wallpaper_hub/core/repository/repository.dart';
import 'package:wallpaper_hub/core/services/games_services/games_services.dart';
import 'package:wallpaper_hub/src/cubit/wallpaper_cubit.dart';
import 'package:wallpaper_hub/src/pages/home_page.dart';
import 'package:wallpaper_hub/src/static_screen/error_screen.dart';
import 'package:wallpaper_hub/src/static_screen/splash_screen.dart';
import 'package:wallpaper_hub/src/utils/app_theme.dart';
import 'package:wallpaper_hub/src/utils/snack_bar.dart';

class MaterialAppHome extends StatefulWidget {
  const MaterialAppHome({super.key});

  @override
  State<MaterialAppHome> createState() => _MaterialAppHomeState();
}

class _MaterialAppHomeState extends State<MaterialAppHome> {
  static final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;
  static final FirebaseAnalyticsObserver _observer =
      FirebaseAnalyticsObserver(analytics: _analytics);

  bool _initialized = false;
  bool _error = false;

  @override
  void initState() {
    super.initState();
    _initializeGameServices();
  }

  void _initializeGameServices() async {
    try {
      final GamesServicesController _gamesServices = GamesServicesController();
      await _gamesServices.initialize();
      setState(() => _initialized = true);
    } catch (e) {
      setState(() => _error = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      return MaterialApp(
        theme: AppTheme.lightTheme,
        title: 'Wallpaper Hub',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generate,
        home: const ErrorScreen(),
        scaffoldMessengerKey: scaffoldMessengerKey,
      );
    }

    if (!_initialized) {
      return MaterialApp(
        title: 'Wallpaper Hub',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generate,
        scaffoldMessengerKey: scaffoldMessengerKey,
        home: const SplashScreen(),
      );
    } else {
      return BlocProvider<WallpaperCubit>(
        create: (context) => WallpaperCubit(
          repository: GetIt.I<Repository>(),
        ),
        child: MaterialApp(
          title: 'Wallpaper Hub',
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.generate,
          navigatorObservers: <NavigatorObserver>[
            _observer,
            NavigationHistoryObserver(),
          ],
          scaffoldMessengerKey: scaffoldMessengerKey,
          home: const HomePage(),
        ),
      );
    }
  }
}
