import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:wallpaper_hub/core/cubit/home_screen_cubit.dart';
import 'package:wallpaper_hub/core/repositories/wallpaper_repository.dart';
import 'package:wallpaper_hub/src/home_screen/home_screen.dart';

class MaterialAppHome extends StatelessWidget {
  const MaterialAppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenCubit>(
      create: (context) => HomeScreenCubit(
        repository: GetIt.I<WallpaperRepository>(),
      ),
      child: const HomeScreen(),
    );
  }
}
