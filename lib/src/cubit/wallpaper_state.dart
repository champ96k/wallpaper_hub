part of 'wallpaper_cubit.dart';

abstract class WallpaperState extends Equatable {}

class WallpaperInitState extends WallpaperState {
  @override
  List<Object?> get props => ['WallpaperInitState'];
}

class WallpaperLoading extends WallpaperState {
  WallpaperLoading(this.loadingMessage);
  final String loadingMessage;
  @override
  List<Object?> get props => [loadingMessage];
}

class WallpaperLoaded extends WallpaperState {
  WallpaperLoaded({
    required this.model,
    required this.dateTime,
  });
  final WallpaperModel model;
  final DateTime dateTime;
  @override
  List<Object?> get props => [model, dateTime];
}

class WallpaperErrorState extends WallpaperState {
  WallpaperErrorState(this.errorMessage);
  final String errorMessage;
  @override
  List<Object?> get props => [errorMessage];
}
