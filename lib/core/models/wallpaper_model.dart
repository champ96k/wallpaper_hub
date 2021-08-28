import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'wallpaper_model.freezed.dart';
part 'wallpaper_model.g.dart';

@freezed
abstract class WallpaperModel with _$WallpaperModel {
  @HiveType(typeId: 0)
  const factory WallpaperModel({
    @HiveField(0) int? id,
    @HiveField(1) int? width,
    @HiveField(2) int? height,
    @HiveField(3) String? url,
    @HiveField(4) String? photographer,
    @HiveField(5) String? photographerUrl,
    @HiveField(6) int? photographerId,
    @HiveField(7) String? avgColor,
    @HiveField(8) Src? src,
    @HiveField(9) bool? liked,
  }) = _WallpaperModel;

  factory WallpaperModel.fromJson(Map<String, dynamic> json) =>
      _$WallpaperModelFromJson(json);
}

@freezed
abstract class Src with _$Src {
  @HiveType(typeId: 1)
  const factory Src({
    @HiveField(0) String? original,
    @HiveField(1) String? large2X,
    @HiveField(2) String? large,
    @HiveField(3) String? medium,
    @HiveField(4) String? small,
    @HiveField(5) String? portrait,
    @HiveField(6) String? landscape,
    @HiveField(7) String? tiny,
  }) = _Src;

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);
}
