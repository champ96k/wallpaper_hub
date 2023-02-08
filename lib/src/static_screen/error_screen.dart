import 'package:flutter/material.dart';
import 'package:wallpaper_hub/core/constants/constants.dart';
import 'package:wallpaper_hub/core/utils/extension/context_extension.dart';
import 'package:wallpaper_hub/generated/assets.gen.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: context.paddingLow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.error.svg(
                height: context.height * 0.35,
                width: context.width,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(height: context.normalValue),
              const Text(Constants.errorScreenTitle),
              SizedBox(height: context.normalValue),
              const Text(
                Constants.errorScreenDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
