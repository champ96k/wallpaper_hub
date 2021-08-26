// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WallpaperModel _$_$_WallpaperModelFromJson(Map<String, dynamic> json) {
  return _$_WallpaperModel(
    id: json['id'] as int?,
    width: json['width'] as int?,
    height: json['height'] as int?,
    url: json['url'] as String?,
    photographer: json['photographer'] as String?,
    photographerUrl: json['photographerUrl'] as String?,
    photographerId: json['photographerId'] as int?,
    avgColor: json['avgColor'] as String?,
    src: json['src'] == null
        ? null
        : Src.fromJson(json['src'] as Map<String, dynamic>),
    liked: json['liked'] as bool?,
  );
}

Map<String, dynamic> _$_$_WallpaperModelToJson(_$_WallpaperModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'photographer': instance.photographer,
      'photographerUrl': instance.photographerUrl,
      'photographerId': instance.photographerId,
      'avgColor': instance.avgColor,
      'src': instance.src,
      'liked': instance.liked,
    };

_$_Src _$_$_SrcFromJson(Map<String, dynamic> json) {
  return _$_Src(
    original: json['original'] as String?,
    large2X: json['large2X'] as String?,
    large: json['large'] as String?,
    medium: json['medium'] as String?,
    small: json['small'] as String?,
    portrait: json['portrait'] as String?,
    landscape: json['landscape'] as String?,
    tiny: json['tiny'] as String?,
  );
}

Map<String, dynamic> _$_$_SrcToJson(_$_Src instance) => <String, dynamic>{
      'original': instance.original,
      'large2X': instance.large2X,
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
      'portrait': instance.portrait,
      'landscape': instance.landscape,
      'tiny': instance.tiny,
    };
