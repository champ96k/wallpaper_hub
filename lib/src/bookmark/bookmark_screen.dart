import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/cubit/bookmark_cubit/bookmark_cubit.dart';

import 'package:wallpaper_hub/src/home_screen/components/image_gridview.dart';
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
              return state.models.isEmpty
                  ? const Center(child: Text("No Images found"))
                  : ImageGridView(models: state.models);
            } else if (state is BookmarkErrorState) {
              return const GenericScreen();
            } else {
              return Center(child: Text("Something went wrong State: $state"));
            }
          },
        ),
      ),
    );
  }
}
