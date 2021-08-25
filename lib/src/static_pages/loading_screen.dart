import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  final String loadingText;
  final Color circularProgressIndicatorColor;
  const LoadingScreen({
    Key? key,
    this.loadingText = "Loading",
    this.circularProgressIndicatorColor = const Color(0xffFFC0CB),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              SizedBox(height: _size.height * 0.01),
              Text(
                "Just a few more seconds!",
                textAlign: TextAlign.center,
                style: _textTheme.subtitle1!.copyWith(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
