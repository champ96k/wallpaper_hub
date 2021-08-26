import 'package:flutter/material.dart';
import 'package:wallpaper_hub/core/app_configs/routes_generator.dart';
import 'package:wallpaper_hub/src/material_app_home.dart';

import 'core/app_configs/service_locator.dart';

void main() {
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
      home: const MaterialAppHome(),
    );
  }
}
