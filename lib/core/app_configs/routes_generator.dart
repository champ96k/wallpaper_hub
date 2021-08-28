import 'package:flutter/material.dart';
import 'package:wallpaper_hub/core/app_configs/screen_names.dart';
import 'package:wallpaper_hub/src/home_screen/home_screen.dart';
import 'package:wallpaper_hub/src/home_screen/image_view_screen.dart';
import 'package:wallpaper_hub/src/material_app_home.dart';

class RouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case ScreenNames.homepage:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case ScreenNames.imageViewScreen:
        Map<String, dynamic> args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (context) => ImageViewBuilder(
            wallpaperModel: args['wallpaperModel'],
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const MaterialAppHome(),
        );
    }
  }
}
