import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';
import 'package:wallpaper_hub/core/repositories/wallpaper_repository.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final WallpaperRepository repository;
  HomeScreenCubit({required this.repository}) : super(LoadingState()) {
    _fectchImages();
  }

  void _fectchImages() async {
    try {
      emit(LoadingState());
      final models = await repository.fetchImages();
      print(models);
      emit(ImageLoadedState(models));
    } on Exception catch (e) {
      log(e.toString());
      emit(ErrorState("Error Occured: $e"));
    }
  }

  void searchImages(String imageName) async {
    try {
      emit(LoadingState());
      final List<WallpaperModel> models =
          await repository.searchImages(imageName);
      emit(ImageLoadedState(models));
    } on Exception catch (e) {
      emit(ErrorState("Error Occured: $e"));
    }
  }
}
