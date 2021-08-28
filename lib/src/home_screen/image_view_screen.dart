import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageViewScreen extends StatelessWidget {
  final String imageUrl;
  final String autherName;
  const ImageViewScreen({
    Key? key,
    required this.imageUrl,
    this.autherName = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: _size.height,
              width: _size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: _size.width * 0.2,
            right: _size.width * 0.2,
            bottom: _size.height * 0.04,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.6),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Save to bookmark"),
              ),
            ),
          ),
          Positioned(
            left: _size.width * 0.2,
            right: _size.width * 0.2,
            bottom: _size.height * 0.12,
            child: Text(
              "© by $autherName",
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: _size.height * 0.05,
            left: _size.width * 0.04,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
