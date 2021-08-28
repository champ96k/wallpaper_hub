import 'package:flutter/material.dart';
import 'package:wallpaper_hub/core/app_configs/screen_names.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';
import 'package:wallpaper_hub/src/home_screen/image_view_screen.dart';

import 'image_builder.dart';

class ImageGridView extends StatelessWidget {
  final List<dynamic> models;
  const ImageGridView({Key? key, required this.models}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 6.0,
      ),
      padding: const EdgeInsets.all(3.0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: models.length,
      itemBuilder: (context, index) {
        final WallpaperModel wallpaperModel = models[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ScreenNames.imageViewScreen,
              arguments: {"wallpaperModel": wallpaperModel},
            );
          },
          child: ImageBuilder(
            imageUrl: "${wallpaperModel.src?.original}",
          ),
        );
      },
    );
  }
}
