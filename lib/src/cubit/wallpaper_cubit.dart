import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/constants/constants.dart';
import 'package:wallpaper_hub/core/model/wallpaper_model.dart';
import 'package:wallpaper_hub/core/repository/repository.dart';

part 'wallpaper_state.dart';

class WallpaperCubit extends Cubit<WallpaperState> {
  WallpaperCubit({required this.repository}) : super(WallpaperInitState()) {
    fetchWallpapers(path: Constants.basePath);
  }

  final Repository repository;

  void fetchWallpapers({required String path}) async {
    try {
      emit(WallpaperLoading("Loading..."));
      final _model = await repository.fecthWallpapers(path: path);
      emit(WallpaperLoaded(model: _model, dateTime: DateTime.now()));
    } catch (e) {
      emit(WallpaperErrorState("$e"));
    }
  }

  Future<void> searchWallpapers({required String searchText}) async {
    try {
      emit(WallpaperLoading("Loading..."));
      final _model = await repository.searchWallpapers(searchText: searchText);
      emit(WallpaperLoaded(model: _model, dateTime: DateTime.now()));
    } catch (e) {
      emit(WallpaperErrorState("$e"));
    }
  }
}
