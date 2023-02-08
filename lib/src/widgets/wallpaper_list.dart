import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/utils/extension/context_extension.dart';
import 'package:wallpaper_hub/src/cubit/wallpaper_cubit.dart';
import 'package:wallpaper_hub/src/pages/empty_wallpapers.dart';
import 'package:wallpaper_hub/src/pages/image_view_screen.dart';

class WallpaperList extends StatefulWidget {
  const WallpaperList({super.key});

  @override
  State<WallpaperList> createState() => _WallpaperListState();
}

class _WallpaperListState extends State<WallpaperList> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.addListener(() {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          //!
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WallpaperCubit, WallpaperState>(
      builder: (context, state) {
        if (state is WallpaperLoaded) {
          final _wallpapers = state.model.photos;
          if (_wallpapers == null || _wallpapers.isEmpty) {
            return const NoWallpapersFound();
          } else {
            return GridView.builder(
              controller: _scrollController,
              physics: const ScrollPhysics(),
              itemCount: _wallpapers.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                mainAxisSpacing: 6.0,
                crossAxisSpacing: 6.0,
              ),
              itemBuilder: (context, index) {
                final _result = _wallpapers[index];
                return Hero(
                  tag: _result.src?.portrait ?? 0,
                  child: GestureDetector(
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImageViewScreen(
                            imageURl: _result.src?.portrait ?? '',
                          ),
                        ),
                      );
                    },
                    child: _result.src?.portrait == null
                        ? GridTile(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                            ),
                          )
                        : GridTile(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: CachedNetworkImage(
                                imageUrl: _result.src?.portrait ?? '',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                  ),
                );
              },
            );
          }
        } else {
          return Container(
            alignment: Alignment.center,
            height: context.height * 0.6,
            child: const CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
