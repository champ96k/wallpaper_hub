import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/constants/constant.dart';
import 'package:wallpaper_hub/core/cubit/home_screen_cubit.dart';
import 'package:wallpaper_hub/src/home_screen/components/image_gridview.dart';
import 'package:wallpaper_hub/src/static_pages/generic_screen.dart';
import 'package:wallpaper_hub/src/static_pages/loading_screen.dart';
import 'package:wallpaper_hub/src/static_pages/no_internet_connection.dart';

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
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const LoadingScreen();
            } else if (state is ImageLoadedState) {
              final models = state.models;
              return state.isNointernetConnection
                  ? const NoInternetConnection()
                  : Column(
                      children: [
                        const SearchBar(),
                        CategoriesCard(),
                        state.models.isEmpty
                            ? GenericScreen(
                                buttonText: "Explore",
                                ontab: () => context
                                    .read<HomeScreenCubit>()
                                    .fectchImages(),
                                errorMessage: Constants.noImagesFound,
                              )
                            : ImageGridView(models: models)
                      ],
                    );
            } else if (state is ErrorState) {
              return const GenericScreen();
            } else {
              return const Center(child: Text("Something went wrong"));
            }
          },
        ),
      ),
    );
  }
}
