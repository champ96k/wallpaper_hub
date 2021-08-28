import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:wallpaper_hub/core/app_configs/hive_config.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';

part 'bookmark_state.dart';

class BookmarkCubit extends Cubit<BookmarkState> {
  BookmarkCubit() : super(BookmarkLoadingState());

  void saveToBookmarks(WallpaperModel wallpaperModel) async {
    try {
      await Hive.openBox<WallpaperModel>(HiveConfig.wallpaperBox);
      final Box<WallpaperModel> wallpaperBox =
          Hive.box<WallpaperModel>(HiveConfig.wallpaperBox);
      bool isAlreadyPresent =
          await wallpaperBox.values.contains(wallpaperModel);
      if (!isAlreadyPresent) {
        await wallpaperBox.add(wallpaperModel);
        emit(BookmarkSuccessState("Image saved to bookmark"));
      } else {
        emit(BookmarkSuccessState("Image is already bookmarked"));
      }
    } catch (e) {
      emit(BookmarkErrorState("Error: $e"));
    }
  }

  void fetchBookmarkImages() async {
    try {
      emit(BookmarkLoadingState());
      await Hive.openBox<WallpaperModel>(HiveConfig.wallpaperBox);
      final Box<WallpaperModel> wallpaperBox =
          Hive.box<WallpaperModel>(HiveConfig.wallpaperBox);
      final List<WallpaperModel> models = await wallpaperBox.values.toList();
      emit(BookmarkImageLoaded(models: models));
    } catch (e) {
      emit(BookmarkErrorState("Error: $e"));
    }
  }
}
