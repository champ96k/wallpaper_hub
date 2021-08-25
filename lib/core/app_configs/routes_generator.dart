import 'package:flutter/material.dart';
import 'package:wallpaper_hub/src/material_app_home.dart';

class RouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(
          builder: (context) => const MaterialAppHome(),
        );
    }
  }
}
