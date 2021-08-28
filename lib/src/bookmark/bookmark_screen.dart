import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/app_configs/screen_names.dart';
import 'package:wallpaper_hub/core/cubit/bookmark_cubit/bookmark_cubit.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';
import 'package:wallpaper_hub/src/home_screen/components/image_builder.dart';

import 'package:wallpaper_hub/src/static_pages/generic_screen.dart';
import 'package:wallpaper_hub/src/static_pages/loading_screen.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  _BookmarkScreenState createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      context.read<BookmarkCubit>().fetchBookmarkImages();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: BlocBuilder<BookmarkCubit, BookmarkState>(
          buildWhen: (previous, current) {
            if (current is BookmarkSuccessState) {
              return false;
            } else {
              return true;
            }
          },
          builder: (context, state) {
            if (state is BookmarkLoadingState) {
              return const LoadingScreen();
            } else if (state is BookmarkImageLoaded) {
              final List<WallpaperModel> models =
                  state.models.reversed.toList();
              return models.isEmpty
                  ? const GenericScreen(errorMessage: "No images found")
                  : GridView.builder(
                      shrinkWrap: true,
                      primary: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
            } else if (state is BookmarkErrorState) {
              return const GenericScreen();
            } else {
              return const GenericScreen();
            }
          },
        ),
      ),
    );
  }
}
