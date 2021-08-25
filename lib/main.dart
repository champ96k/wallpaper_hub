import 'package:flutter/material.dart';
import 'package:wallpaper_hub/src/material_app_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MaterialAppHome(),
    );
  }
}
