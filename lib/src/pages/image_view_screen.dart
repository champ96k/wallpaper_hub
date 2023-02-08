import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_hub/core/utils/extension/context_extension.dart';

class ImageViewScreen extends StatelessWidget {
  const ImageViewScreen({super.key, required this.imageURl});

  final String imageURl;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: imageURl,
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: context.height,
              width: context.width,
              child: CachedNetworkImage(
                imageUrl: imageURl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: context.height,
              width: context.width,
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      //!
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: context.width / 2,
                          height: context.height * 0.06,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xff1C1B1B).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 45),
                          child: Container(
                            width: context.width / 2,
                            height: context.height * 0.06,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white24,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(40),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0x36FFFFFF),
                                  Color(0x0FFFFFFF),
                                ],
                                begin: FractionalOffset.topLeft,
                                end: FractionalOffset.bottomRight,
                              ),
                            ),
                            child: const Text(
                              "Set Wallpaper",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
