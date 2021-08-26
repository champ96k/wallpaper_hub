import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/cubit/home_screen_cubit.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';
import 'package:wallpaper_hub/src/static_pages/error_screen.dart';
import 'package:wallpaper_hub/src/widget/custom_app_bar.dart';

import 'components/categories_card.dart';
import 'components/image_builder.dart';
import 'components/search_bar.dart';

class SearchScreen extends StatefulWidget {
  final String searchText;
  const SearchScreen({
    Key? key,
    required this.searchText,
  }) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      context.read<HomeScreenCubit>().searchImages(widget.searchText);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(showBackButton: true),
      body: Center(
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
            builder: (context, state) {
              if (state is LoadingState) {
                return const CircularProgressIndicator();
              } else if (state is ImageLoadedState) {
                return Column(
                  children: [
                    const SearchBar(),
                    CategoriesCard(),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        mainAxisSpacing: 6.0,
                        crossAxisSpacing: 6.0,
                      ),
                      padding: const EdgeInsets.all(3.0),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.models.length,
                      itemBuilder: (context, index) {
                        final WallpaperModel model = state.models[index];
                        return ImageBuilder(imageUrl: "${model.src?.original}");
                      },
                    ),
                  ],
                );
              } else if (state is ErrorState) {
                return const ErrorScreen();
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }
}
