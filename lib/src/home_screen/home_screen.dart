import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/cubit/home_screen_cubit.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';
import 'package:wallpaper_hub/src/home_screen/components/image_builder.dart';
import 'package:wallpaper_hub/src/static_pages/error_screen.dart';
import 'package:wallpaper_hub/src/widget/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Wallpaper Hub"),
      body: Center(
        child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const CircularProgressIndicator();
            } else if (state is ImageLoadedState) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                padding: const EdgeInsets.all(3.0),
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.models.length,
                itemBuilder: (context, index) {
                  final WallpaperModel model = state.models[index];
                  return ImageBuilder(imageUrl: "${model.urls!.full}");
                },
              );
            } else {
              return ErrorScreen();
            }
          },
        ),
      ),
    );
  }
}
