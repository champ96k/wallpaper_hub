// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WallpaperModelAdapter extends TypeAdapter<_$_WallpaperModel> {
  @override
  final int typeId = 0;

  @override
  _$_WallpaperModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_WallpaperModel(
      id: fields[0] as int?,
      width: fields[1] as int?,
      height: fields[2] as int?,
      url: fields[3] as String?,
      photographer: fields[4] as String?,
      photographerUrl: fields[5] as String?,
      photographerId: fields[6] as int?,
      avgColor: fields[7] as String?,
      src: fields[8] as Src?,
      liked: fields[9] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_WallpaperModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.width)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.photographer)
      ..writeByte(5)
      ..write(obj.photographerUrl)
      ..writeByte(6)
      ..write(obj.photographerId)
      ..writeByte(7)
      ..write(obj.avgColor)
      ..writeByte(8)
      ..write(obj.src)
      ..writeByte(9)
      ..write(obj.liked);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WallpaperModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SrcAdapter extends TypeAdapter<_$_Src> {
  @override
  final int typeId = 1;

  @override
  _$_Src read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Src(
      original: fields[0] as String?,
      large2X: fields[1] as String?,
      large: fields[2] as String?,
      medium: fields[3] as String?,
      small: fields[4] as String?,
      portrait: fields[5] as String?,
      landscape: fields[6] as String?,
      tiny: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Src obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.original)
      ..writeByte(1)
      ..write(obj.large2X)
      ..writeByte(2)
      ..write(obj.large)
      ..writeByte(3)
      ..write(obj.medium)
      ..writeByte(4)
      ..write(obj.small)
      ..writeByte(5)
      ..write(obj.portrait)
      ..writeByte(6)
      ..write(obj.landscape)
      ..writeByte(7)
      ..write(obj.tiny);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SrcAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
