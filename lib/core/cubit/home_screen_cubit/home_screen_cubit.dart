import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:equatable/equatable.dart';
import 'package:wallpaper_hub/core/constants/constant.dart';
import 'package:wallpaper_hub/core/repositories/wallpaper_repository.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  final WallpaperRepository repository;
  HomeScreenCubit({required this.repository}) : super(LoadingState());

  void fectchImages({required int page}) async {
    emit(LoadingState());
    final _connectivityResult = await (Connectivity().checkConnectivity());
    print(_connectivityResult);
    if (_connectivityResult == ConnectivityResult.none) {
      emit(ImageLoadedState(models: [], isNointernetConnection: true));
    } else {
      try {
        final models = await repository.fetchImages(page: page);
        emit(ImageLoadedState(models: models, isNointernetConnection: false));
      } catch (e) {
        emit(ErrorState("Error: $e"));
      }
    }
  }

  void searchImages(String imageName, {required int page}) async {
    try {
      emit(LoadingState());
      final models = await repository.fetchImages(
        path: "${Constants.searchBaseURL}'$imageName&per_page=15&page'}",
        page: page,
      );
      emit(ImageLoadedState(models: models, isNointernetConnection: false));
    } catch (e) {
      emit(ErrorState("Error: $e"));
    }
  }
}
