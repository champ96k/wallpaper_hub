import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wallpaper_hub/core/constants/constant.dart';
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
      emit(ImageLoadedState(models));
    } catch (e) {
      emit(ErrorState("Error: $e"));
    }
  }

  void searchImages(String imageName) async {
    try {
      emit(LoadingState());
      final models = await repository.fetchImages(
        path: "${Constants.searchBaseURL}'$imageName&per_page=15&page=1'}",
      );
      emit(ImageLoadedState(models));
    } catch (e) {
      emit(ErrorState("Error: $e"));
    }
  }
}
