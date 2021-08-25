part of 'home_screen_cubit.dart';

abstract class HomeScreenState extends Equatable {}

class LoadingState extends HomeScreenState {
  @override
  List<Object?> get props => [];
}

class ImageLoadedState extends HomeScreenState {
  final List<dynamic> models;
  ImageLoadedState(this.models);
  @override
  List<Object?> get props => [models];
}

class ErrorState extends HomeScreenState {
  final String errorMessage;
  ErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}
