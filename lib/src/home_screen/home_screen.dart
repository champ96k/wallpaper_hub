import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/cubit/home_screen_cubit.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';
import 'package:wallpaper_hub/src/home_screen/components/image_builder.dart';
import 'package:wallpaper_hub/src/static_pages/error_screen.dart';
import 'package:wallpaper_hub/src/widget/custom_app_bar.dart';

import 'components/categories_card.dart';
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
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      if (widget.searchText != null) {
        context.read<HomeScreenCubit>().searchImages("${widget.searchText}");
      } else {
        context.read<HomeScreenCubit>().fectchImages();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
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
