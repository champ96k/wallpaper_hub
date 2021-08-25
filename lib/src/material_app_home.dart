import 'package:flutter/material.dart';
import 'package:wallpaper_hub/src/widget/custom_app_bar.dart';

class MaterialAppHome extends StatelessWidget {
  const MaterialAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Wallpaper Hub"),
      body: const Center(
        child: Text("Welcome"),
      ),
    );
  }
}
