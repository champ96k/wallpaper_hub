import 'package:flutter/material.dart';
import 'package:wallpaper_hub/core/constants/constants.dart';
import 'package:wallpaper_hub/core/utils/extension/context_extension.dart';
import 'package:wallpaper_hub/generated/assets.gen.dart';

class NoWallpapersFound extends StatelessWidget {
  const NoWallpapersFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: context.height * 0.14),
          Assets.images.imageNotFound.svg(
            height: context.height * 0.2,
            width: context.width,
            fit: BoxFit.contain,
          ),
          SizedBox(height: context.normalValue),
          const Text(
            Constants.noResultFound,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: context.normalValue),
          const Text(
            Constants.imageNotFoundDesc,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
