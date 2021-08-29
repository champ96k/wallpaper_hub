import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/app_configs/screen_names.dart';
import 'package:wallpaper_hub/core/cubit/home_screen_cubit/home_screen_cubit.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';
import 'package:wallpaper_hub/src/static_pages/generic_screen.dart';
import 'package:wallpaper_hub/src/static_pages/loading_screen.dart';
import 'package:wallpaper_hub/src/widget/custom_app_bar.dart';

import 'components/categories_card.dart';
import 'components/image_builder.dart';
import 'components/search_bar.dart';

class HomeScreen extends StatefulWidget {
  final String? searchText;
  const HomeScreen({
    Key? key,
    this.searchText,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  int page = 1;
  List<dynamic> allWallpapers = [];
  @override
  void initState() {
    _fetchInfo(page);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchInfo(++page);
      }
    });
    super.initState();
  }

  void _fetchInfo(int page) {
    if (widget.searchText != null) {
      context
          .read<HomeScreenCubit>()
          .searchImages("${widget.searchText}", page: page);
    } else {
      context.read<HomeScreenCubit>().fectchImages(page: page);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(height: widget.searchText != null ? 55.0 : 0.0),
      body: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        buildWhen: (previous, current) {
          if (current is LoadingState) {
            return false;
          } else {
            return true;
          }
        },
        builder: (context, state) {
          if (state is LoadingState) {
            return const LoadingScreen();
          } else if (state is ImageLoadedState) {
            final currentWallpapers = state.models;
            allWallpapers.addAll(currentWallpapers);
            return state.isNointernetConnection
                ? const GenericScreen(errorMessage: 'No internet connection')
                : CustomScrollView(
                    controller: _scrollController,
                    physics: const ScrollPhysics(),
                    slivers: <Widget>[
                      const SliverToBoxAdapter(child: SearchBar()),
                      SliverToBoxAdapter(child: CategoriesCard()),
                      allWallpapers.isEmpty
                          ? const SliverToBoxAdapter(child: GenericScreen())
                          : SliverGrid(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.7,
                                mainAxisSpacing: 6.0,
                                crossAxisSpacing: 6.0,
                              ),
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  final WallpaperModel wallpaperModel =
                                      allWallpapers[index];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                        ScreenNames.imageViewScreen,
                                        arguments: {
                                          "wallpaperModel": wallpaperModel
                                        },
                                      );
                                    },
                                    child: ImageBuilder(
                                        imageUrl:
                                            "${wallpaperModel.src?.medium}"),
                                  );
                                },
                                childCount: allWallpapers.length,
                              ),
                            ),
                    ],
                  );
          } else if (state is ErrorState) {
            return const GenericScreen();
          } else {
            return const GenericScreen(errorMessage: "Something went wrong");
          }
        },
      ),
    );
  }
}
