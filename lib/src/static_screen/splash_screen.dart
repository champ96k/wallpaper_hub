import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
    this.loadingText = "Wallpaper Hub",
    this.color = Colors.indigo,
    this.textColor = Colors.white,
  }) : super(key: key);
  final String loadingText;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: color),
            const SizedBox(height: 16),
            Text(
              loadingText,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
