// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallpaper_model.freezed.dart';
part 'wallpaper_model.g.dart';

@freezed
class WallpaperModel with _$WallpaperModel {
  const factory WallpaperModel({
    int? page,
    @JsonKey(name: 'per_page') int? perPage,
    List<Photo>? photos,
    @JsonKey(name: 'total_results') int? totalResults,
    @JsonKey(name: 'next_page') String? nextPage,
  }) = _WallpaperModel;

  factory WallpaperModel.fromJson(Map<String, dynamic> json) =>
      _$WallpaperModelFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    int? id,
    int? width,
    int? height,
    String? url,
    String? photographer,
    @JsonKey(name: 'photographer_url') String? photographerUrl,
    @JsonKey(name: 'photographer_id') int? photographerId,
    @JsonKey(name: 'avg_color') String? avgColor,
    Src? src,
    bool? liked,
    String? alt,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@freezed
class Src with _$Src {
  const factory Src({
    String? original,
    String? large2X,
    String? large,
    String? medium,
    String? small,
    String? portrait,
    String? landscape,
    String? tiny,
  }) = _Src;

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);
}
