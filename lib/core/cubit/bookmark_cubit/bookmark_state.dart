part of 'bookmark_cubit.dart';

abstract class BookmarkState extends Equatable {}

class BookmarkLoadingState extends BookmarkState {
  @override
  List<Object?> get props => ['BookmarkLoadingState'];
}

class BookmarkImageLoaded extends BookmarkState {
  final List<WallpaperModel> models;
  BookmarkImageLoaded({required this.models});
  @override
  List<Object?> get props => [models];
}

class BookmarkErrorState extends BookmarkState {
  final String errorMessage;
  BookmarkErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

class BookmarkSuccessState extends BookmarkState {
  final String message;

  BookmarkSuccessState(this.message);
  @override
  List<Object?> get props => [message];
}
