import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:wallpaper_hub/core/app_configs/routes_generator.dart';
import 'package:wallpaper_hub/src/material_app_home.dart';

import 'core/app_configs/service_locator.dart';
import 'core/cubit/bookmark_cubit/bookmark_cubit.dart';
import 'core/cubit/home_screen_cubit/home_screen_cubit.dart';
import 'core/repositories/wallpaper_repository.dart';

Future<void> main() async {
  serviceLoactor();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper Hub',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      onGenerateRoute: RouteGenerator.generate,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<HomeScreenCubit>(
            create: (context) => HomeScreenCubit(
              repository: GetIt.I<WallpaperRepository>(),
            ),
          ),
          BlocProvider<BookmarkCubit>(
            create: (context) => BookmarkCubit(),
          ),
        ],
        child: const MaterialAppHome(),
      ),
    );
  }
}
