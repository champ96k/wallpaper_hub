import 'package:flutter/material.dart';
import 'package:wallpaper_hub/core/app_configs/screen_names.dart';
import 'package:wallpaper_hub/src/home_screen/home_screen.dart';
import 'package:wallpaper_hub/src/material_app_home.dart';

class RouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case ScreenNames.homepage:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const MaterialAppHome(),
        );
    }
  }
}
