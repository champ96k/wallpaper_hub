// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallpaper_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WallpaperModel _$WallpaperModelFromJson(Map<String, dynamic> json) {
  return _WallpaperModel.fromJson(json);
}

/// @nodoc
class _$WallpaperModelTearOff {
  const _$WallpaperModelTearOff();

  _WallpaperModel call(
      {@HiveField(0) int? id,
      @HiveField(1) int? width,
      @HiveField(2) int? height,
      @HiveField(3) String? url,
      @HiveField(4) String? photographer,
      @HiveField(5) String? photographerUrl,
      @HiveField(6) int? photographerId,
      @HiveField(7) String? avgColor,
      @HiveField(8) Src? src,
      @HiveField(9) bool? liked}) {
    return _WallpaperModel(
      id: id,
      width: width,
      height: height,
      url: url,
      photographer: photographer,
      photographerUrl: photographerUrl,
      photographerId: photographerId,
      avgColor: avgColor,
      src: src,
      liked: liked,
    );
  }

  WallpaperModel fromJson(Map<String, Object> json) {
    return WallpaperModel.fromJson(json);
  }
}

/// @nodoc
const $WallpaperModel = _$WallpaperModelTearOff();

/// @nodoc
mixin _$WallpaperModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get width => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get height => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get url => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get photographer => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get photographerUrl => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get photographerId => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get avgColor => throw _privateConstructorUsedError;
  @HiveField(8)
  Src? get src => throw _privateConstructorUsedError;
  @HiveField(9)
  bool? get liked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WallpaperModelCopyWith<WallpaperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallpaperModelCopyWith<$Res> {
  factory $WallpaperModelCopyWith(
          WallpaperModel value, $Res Function(WallpaperModel) then) =
      _$WallpaperModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) int? width,
      @HiveField(2) int? height,
      @HiveField(3) String? url,
      @HiveField(4) String? photographer,
      @HiveField(5) String? photographerUrl,
      @HiveField(6) int? photographerId,
      @HiveField(7) String? avgColor,
      @HiveField(8) Src? src,
      @HiveField(9) bool? liked});

  $SrcCopyWith<$Res>? get src;
}

/// @nodoc
class _$WallpaperModelCopyWithImpl<$Res>
    implements $WallpaperModelCopyWith<$Res> {
  _$WallpaperModelCopyWithImpl(this._value, this._then);

  final WallpaperModel _value;
  // ignore: unused_field
  final $Res Function(WallpaperModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? photographerUrl = freezed,
    Object? photographerId = freezed,
    Object? avgColor = freezed,
    Object? src = freezed,
    Object? liked = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer: photographer == freezed
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerUrl: photographerUrl == freezed
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerId: photographerId == freezed
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int?,
      avgColor: avgColor == freezed
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src?,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $SrcCopyWith<$Res>? get src {
    if (_value.src == null) {
      return null;
    }

    return $SrcCopyWith<$Res>(_value.src!, (value) {
      return _then(_value.copyWith(src: value));
    });
  }
}

/// @nodoc
abstract class _$WallpaperModelCopyWith<$Res>
    implements $WallpaperModelCopyWith<$Res> {
  factory _$WallpaperModelCopyWith(
          _WallpaperModel value, $Res Function(_WallpaperModel) then) =
      __$WallpaperModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) int? width,
      @HiveField(2) int? height,
      @HiveField(3) String? url,
      @HiveField(4) String? photographer,
      @HiveField(5) String? photographerUrl,
      @HiveField(6) int? photographerId,
      @HiveField(7) String? avgColor,
      @HiveField(8) Src? src,
      @HiveField(9) bool? liked});

  @override
  $SrcCopyWith<$Res>? get src;
}

/// @nodoc
class __$WallpaperModelCopyWithImpl<$Res>
    extends _$WallpaperModelCopyWithImpl<$Res>
    implements _$WallpaperModelCopyWith<$Res> {
  __$WallpaperModelCopyWithImpl(
      _WallpaperModel _value, $Res Function(_WallpaperModel) _then)
      : super(_value, (v) => _then(v as _WallpaperModel));

  @override
  _WallpaperModel get _value => super._value as _WallpaperModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? photographerUrl = freezed,
    Object? photographerId = freezed,
    Object? avgColor = freezed,
    Object? src = freezed,
    Object? liked = freezed,
  }) {
    return _then(_WallpaperModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer: photographer == freezed
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerUrl: photographerUrl == freezed
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerId: photographerId == freezed
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int?,
      avgColor: avgColor == freezed
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src?,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_WallpaperModel implements _WallpaperModel {
  const _$_WallpaperModel(
      {@HiveField(0) this.id,
      @HiveField(1) this.width,
      @HiveField(2) this.height,
      @HiveField(3) this.url,
      @HiveField(4) this.photographer,
      @HiveField(5) this.photographerUrl,
      @HiveField(6) this.photographerId,
      @HiveField(7) this.avgColor,
      @HiveField(8) this.src,
      @HiveField(9) this.liked});

  factory _$_WallpaperModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WallpaperModelFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final int? width;
  @override
  @HiveField(2)
  final int? height;
  @override
  @HiveField(3)
  final String? url;
  @override
  @HiveField(4)
  final String? photographer;
  @override
  @HiveField(5)
  final String? photographerUrl;
  @override
  @HiveField(6)
  final int? photographerId;
  @override
  @HiveField(7)
  final String? avgColor;
  @override
  @HiveField(8)
  final Src? src;
  @override
  @HiveField(9)
  final bool? liked;

  @override
  String toString() {
    return 'WallpaperModel(id: $id, width: $width, height: $height, url: $url, photographer: $photographer, photographerUrl: $photographerUrl, photographerId: $photographerId, avgColor: $avgColor, src: $src, liked: $liked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WallpaperModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.photographer, photographer) ||
                const DeepCollectionEquality()
                    .equals(other.photographer, photographer)) &&
            (identical(other.photographerUrl, photographerUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photographerUrl, photographerUrl)) &&
            (identical(other.photographerId, photographerId) ||
                const DeepCollectionEquality()
                    .equals(other.photographerId, photographerId)) &&
            (identical(other.avgColor, avgColor) ||
                const DeepCollectionEquality()
                    .equals(other.avgColor, avgColor)) &&
            (identical(other.src, src) ||
                const DeepCollectionEquality().equals(other.src, src)) &&
            (identical(other.liked, liked) ||
                const DeepCollectionEquality().equals(other.liked, liked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(photographer) ^
      const DeepCollectionEquality().hash(photographerUrl) ^
      const DeepCollectionEquality().hash(photographerId) ^
      const DeepCollectionEquality().hash(avgColor) ^
      const DeepCollectionEquality().hash(src) ^
      const DeepCollectionEquality().hash(liked);

  @JsonKey(ignore: true)
  @override
  _$WallpaperModelCopyWith<_WallpaperModel> get copyWith =>
      __$WallpaperModelCopyWithImpl<_WallpaperModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WallpaperModelToJson(this);
  }
}

abstract class _WallpaperModel implements WallpaperModel {
  const factory _WallpaperModel(
      {@HiveField(0) int? id,
      @HiveField(1) int? width,
      @HiveField(2) int? height,
      @HiveField(3) String? url,
      @HiveField(4) String? photographer,
      @HiveField(5) String? photographerUrl,
      @HiveField(6) int? photographerId,
      @HiveField(7) String? avgColor,
      @HiveField(8) Src? src,
      @HiveField(9) bool? liked}) = _$_WallpaperModel;

  factory _WallpaperModel.fromJson(Map<String, dynamic> json) =
      _$_WallpaperModel.fromJson;

  @override
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  int? get width => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  int? get height => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String? get url => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  String? get photographer => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  String? get photographerUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  int? get photographerId => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  String? get avgColor => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  Src? get src => throw _privateConstructorUsedError;
  @override
  @HiveField(9)
  bool? get liked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WallpaperModelCopyWith<_WallpaperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Src _$SrcFromJson(Map<String, dynamic> json) {
  return _Src.fromJson(json);
}

/// @nodoc
class _$SrcTearOff {
  const _$SrcTearOff();

  _Src call(
      {@HiveField(0) String? original,
      @HiveField(1) String? large2X,
      @HiveField(2) String? large,
      @HiveField(3) String? medium,
      @HiveField(4) String? small,
      @HiveField(5) String? portrait,
      @HiveField(6) String? landscape,
      @HiveField(7) String? tiny}) {
    return _Src(
      original: original,
      large2X: large2X,
      large: large,
      medium: medium,
      small: small,
      portrait: portrait,
      landscape: landscape,
      tiny: tiny,
    );
  }

  Src fromJson(Map<String, Object> json) {
    return Src.fromJson(json);
  }
}

/// @nodoc
const $Src = _$SrcTearOff();

/// @nodoc
mixin _$Src {
  @HiveField(0)
  String? get original => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get large2X => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get large => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get medium => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get small => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get portrait => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get landscape => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get tiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SrcCopyWith<Src> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SrcCopyWith<$Res> {
  factory $SrcCopyWith(Src value, $Res Function(Src) then) =
      _$SrcCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String? original,
      @HiveField(1) String? large2X,
      @HiveField(2) String? large,
      @HiveField(3) String? medium,
      @HiveField(4) String? small,
      @HiveField(5) String? portrait,
      @HiveField(6) String? landscape,
      @HiveField(7) String? tiny});
}

/// @nodoc
class _$SrcCopyWithImpl<$Res> implements $SrcCopyWith<$Res> {
  _$SrcCopyWithImpl(this._value, this._then);

  final Src _value;
  // ignore: unused_field
  final $Res Function(Src) _then;

  @override
  $Res call({
    Object? original = freezed,
    Object? large2X = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_value.copyWith(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      large2X: large2X == freezed
          ? _value.large2X
          : large2X // ignore: cast_nullable_to_non_nullable
              as String?,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: portrait == freezed
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: landscape == freezed
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: tiny == freezed
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SrcCopyWith<$Res> implements $SrcCopyWith<$Res> {
  factory _$SrcCopyWith(_Src value, $Res Function(_Src) then) =
      __$SrcCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String? original,
      @HiveField(1) String? large2X,
      @HiveField(2) String? large,
      @HiveField(3) String? medium,
      @HiveField(4) String? small,
      @HiveField(5) String? portrait,
      @HiveField(6) String? landscape,
      @HiveField(7) String? tiny});
}

/// @nodoc
class __$SrcCopyWithImpl<$Res> extends _$SrcCopyWithImpl<$Res>
    implements _$SrcCopyWith<$Res> {
  __$SrcCopyWithImpl(_Src _value, $Res Function(_Src) _then)
      : super(_value, (v) => _then(v as _Src));

  @override
  _Src get _value => super._value as _Src;

  @override
  $Res call({
    Object? original = freezed,
    Object? large2X = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_Src(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      large2X: large2X == freezed
          ? _value.large2X
          : large2X // ignore: cast_nullable_to_non_nullable
              as String?,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: portrait == freezed
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: landscape == freezed
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: tiny == freezed
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_Src implements _Src {
  const _$_Src(
      {@HiveField(0) this.original,
      @HiveField(1) this.large2X,
      @HiveField(2) this.large,
      @HiveField(3) this.medium,
      @HiveField(4) this.small,
      @HiveField(5) this.portrait,
      @HiveField(6) this.landscape,
      @HiveField(7) this.tiny});

  factory _$_Src.fromJson(Map<String, dynamic> json) => _$_$_SrcFromJson(json);

  @override
  @HiveField(0)
  final String? original;
  @override
  @HiveField(1)
  final String? large2X;
  @override
  @HiveField(2)
  final String? large;
  @override
  @HiveField(3)
  final String? medium;
  @override
  @HiveField(4)
  final String? small;
  @override
  @HiveField(5)
  final String? portrait;
  @override
  @HiveField(6)
  final String? landscape;
  @override
  @HiveField(7)
  final String? tiny;

  @override
  String toString() {
    return 'Src(original: $original, large2X: $large2X, large: $large, medium: $medium, small: $small, portrait: $portrait, landscape: $landscape, tiny: $tiny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Src &&
            (identical(other.original, original) ||
                const DeepCollectionEquality()
                    .equals(other.original, original)) &&
            (identical(other.large2X, large2X) ||
                const DeepCollectionEquality()
                    .equals(other.large2X, large2X)) &&
            (identical(other.large, large) ||
                const DeepCollectionEquality().equals(other.large, large)) &&
            (identical(other.medium, medium) ||
                const DeepCollectionEquality().equals(other.medium, medium)) &&
            (identical(other.small, small) ||
                const DeepCollectionEquality().equals(other.small, small)) &&
            (identical(other.portrait, portrait) ||
                const DeepCollectionEquality()
                    .equals(other.portrait, portrait)) &&
            (identical(other.landscape, landscape) ||
                const DeepCollectionEquality()
                    .equals(other.landscape, landscape)) &&
            (identical(other.tiny, tiny) ||
                const DeepCollectionEquality().equals(other.tiny, tiny)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(original) ^
      const DeepCollectionEquality().hash(large2X) ^
      const DeepCollectionEquality().hash(large) ^
      const DeepCollectionEquality().hash(medium) ^
      const DeepCollectionEquality().hash(small) ^
      const DeepCollectionEquality().hash(portrait) ^
      const DeepCollectionEquality().hash(landscape) ^
      const DeepCollectionEquality().hash(tiny);

  @JsonKey(ignore: true)
  @override
  _$SrcCopyWith<_Src> get copyWith =>
      __$SrcCopyWithImpl<_Src>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SrcToJson(this);
  }
}

abstract class _Src implements Src {
  const factory _Src(
      {@HiveField(0) String? original,
      @HiveField(1) String? large2X,
      @HiveField(2) String? large,
      @HiveField(3) String? medium,
      @HiveField(4) String? small,
      @HiveField(5) String? portrait,
      @HiveField(6) String? landscape,
      @HiveField(7) String? tiny}) = _$_Src;

  factory _Src.fromJson(Map<String, dynamic> json) = _$_Src.fromJson;

  @override
  @HiveField(0)
  String? get original => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String? get large2X => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String? get large => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String? get medium => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  String? get small => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  String? get portrait => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  String? get landscape => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  String? get tiny => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SrcCopyWith<_Src> get copyWith => throw _privateConstructorUsedError;
}
