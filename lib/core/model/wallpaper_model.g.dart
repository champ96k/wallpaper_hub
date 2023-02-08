// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WallpaperModel _$$_WallpaperModelFromJson(Map<String, dynamic> json) =>
    _$_WallpaperModel(
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: json['total_results'] as int?,
      nextPage: json['next_page'] as String?,
    );

Map<String, dynamic> _$$_WallpaperModelToJson(_$_WallpaperModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'photos': instance.photos,
      'total_results': instance.totalResults,
      'next_page': instance.nextPage,
    };

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      id: json['id'] as int?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      url: json['url'] as String?,
      photographer: json['photographer'] as String?,
      photographerUrl: json['photographer_url'] as String?,
      photographerId: json['photographer_id'] as int?,
      avgColor: json['avg_color'] as String?,
      src: json['src'] == null
          ? null
          : Src.fromJson(json['src'] as Map<String, dynamic>),
      liked: json['liked'] as bool?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'photographer': instance.photographer,
      'photographer_url': instance.photographerUrl,
      'photographer_id': instance.photographerId,
      'avg_color': instance.avgColor,
      'src': instance.src,
      'liked': instance.liked,
      'alt': instance.alt,
    };

_$_Src _$$_SrcFromJson(Map<String, dynamic> json) => _$_Src(
      original: json['original'] as String?,
      large2X: json['large2X'] as String?,
      large: json['large'] as String?,
      medium: json['medium'] as String?,
      small: json['small'] as String?,
      portrait: json['portrait'] as String?,
      landscape: json['landscape'] as String?,
      tiny: json['tiny'] as String?,
    );

Map<String, dynamic> _$$_SrcToJson(_$_Src instance) => <String, dynamic>{
      'original': instance.original,
      'large2X': instance.large2X,
      'large': instance.large,
      'medium': instance.medium,
      'small': instance.small,
      'portrait': instance.portrait,
      'landscape': instance.landscape,
      'tiny': instance.tiny,
    };
