import 'package:flutter/material.dart';
import 'package:wallpaper_hub/src/widget/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Home screen"),
      body: const Center(
        child: Text("Work in progress"),
      ),
    );
  }
}
