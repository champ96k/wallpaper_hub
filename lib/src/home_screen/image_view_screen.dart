import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wallpaper_hub/core/cubit/bookmark_cubit/bookmark_cubit.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';

import '../../../../core/utils/command_extenstion.dart';

class ImageViewBuilder extends StatelessWidget {
  final WallpaperModel wallpaperModel;

  const ImageViewBuilder({
    Key? key,
    required this.wallpaperModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BookmarkCubit>(
      create: (context) => BookmarkCubit(),
      child: ImageViewScreen(wallpaperModel: wallpaperModel),
    );
  }
}

class ImageViewScreen extends StatelessWidget {
  final WallpaperModel wallpaperModel;

  const ImageViewScreen({
    Key? key,
    required this.wallpaperModel,
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
              imageUrl: "${wallpaperModel.src?.original}",
              height: _size.height,
              width: _size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              left: _size.width * 0.2,
              right: _size.width * 0.2,
              bottom: _size.height * 0.04,
              child: BlocListener<BookmarkCubit, BookmarkState>(
                listener: (context, state) {
                  if (state is BookmarkSuccessState) {
                    state.message.showSnackBar(context);
                  }
                },
                child: GestureDetector(
                  onTap: () {
                    context
                        .read<BookmarkCubit>()
                        .saveToBookmarks(wallpaperModel);
                  },
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
              )),
          Positioned(
            left: _size.width * 0.2,
            right: _size.width * 0.2,
            bottom: _size.height * 0.12,
            child: InkWell(
              onTap: () async => await canLaunch("${wallpaperModel.url}")
                  ? await launch("${wallpaperModel.url}")
                  : throw 'Could not launch ${wallpaperModel.url}',
              child: Text(
                "© by ${wallpaperModel.photographer}",
                textAlign: TextAlign.center,
              ),
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
