import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageBuilder extends StatelessWidget {
  final String imageUrl;
  const ImageBuilder({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, downloadProgress) {
          return const Center(
            child: Text("Loading"),
          );
        },
        errorWidget: (context, url, error) {
          return const Center(
            child: Text("Error 404"),
          );
        },
      ),
    );
  }
}
