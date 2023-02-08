// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallpaper_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WallpaperModel _$WallpaperModelFromJson(Map<String, dynamic> json) {
  return _WallpaperModel.fromJson(json);
}

/// @nodoc
mixin _$WallpaperModel {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  List<Photo>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page')
  String? get nextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WallpaperModelCopyWith<WallpaperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallpaperModelCopyWith<$Res> {
  factory $WallpaperModelCopyWith(
          WallpaperModel value, $Res Function(WallpaperModel) then) =
      _$WallpaperModelCopyWithImpl<$Res, WallpaperModel>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'per_page') int? perPage,
      List<Photo>? photos,
      @JsonKey(name: 'total_results') int? totalResults,
      @JsonKey(name: 'next_page') String? nextPage});
}

/// @nodoc
class _$WallpaperModelCopyWithImpl<$Res, $Val extends WallpaperModel>
    implements $WallpaperModelCopyWith<$Res> {
  _$WallpaperModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? photos = freezed,
    Object? totalResults = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WallpaperModelCopyWith<$Res>
    implements $WallpaperModelCopyWith<$Res> {
  factory _$$_WallpaperModelCopyWith(
          _$_WallpaperModel value, $Res Function(_$_WallpaperModel) then) =
      __$$_WallpaperModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: 'per_page') int? perPage,
      List<Photo>? photos,
      @JsonKey(name: 'total_results') int? totalResults,
      @JsonKey(name: 'next_page') String? nextPage});
}

/// @nodoc
class __$$_WallpaperModelCopyWithImpl<$Res>
    extends _$WallpaperModelCopyWithImpl<$Res, _$_WallpaperModel>
    implements _$$_WallpaperModelCopyWith<$Res> {
  __$$_WallpaperModelCopyWithImpl(
      _$_WallpaperModel _value, $Res Function(_$_WallpaperModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? photos = freezed,
    Object? totalResults = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_$_WallpaperModel(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WallpaperModel implements _WallpaperModel {
  const _$_WallpaperModel(
      {this.page,
      @JsonKey(name: 'per_page') this.perPage,
      final List<Photo>? photos,
      @JsonKey(name: 'total_results') this.totalResults,
      @JsonKey(name: 'next_page') this.nextPage})
      : _photos = photos;

  factory _$_WallpaperModel.fromJson(Map<String, dynamic> json) =>
      _$$_WallpaperModelFromJson(json);

  @override
  final int? page;
  @override
  @JsonKey(name: 'per_page')
  final int? perPage;
  final List<Photo>? _photos;
  @override
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_results')
  final int? totalResults;
  @override
  @JsonKey(name: 'next_page')
  final String? nextPage;

  @override
  String toString() {
    return 'WallpaperModel(page: $page, perPage: $perPage, photos: $photos, totalResults: $totalResults, nextPage: $nextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WallpaperModel &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage,
      const DeepCollectionEquality().hash(_photos), totalResults, nextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WallpaperModelCopyWith<_$_WallpaperModel> get copyWith =>
      __$$_WallpaperModelCopyWithImpl<_$_WallpaperModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WallpaperModelToJson(
      this,
    );
  }
}

abstract class _WallpaperModel implements WallpaperModel {
  const factory _WallpaperModel(
      {final int? page,
      @JsonKey(name: 'per_page') final int? perPage,
      final List<Photo>? photos,
      @JsonKey(name: 'total_results') final int? totalResults,
      @JsonKey(name: 'next_page') final String? nextPage}) = _$_WallpaperModel;

  factory _WallpaperModel.fromJson(Map<String, dynamic> json) =
      _$_WallpaperModel.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  List<Photo>? get photos;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(name: 'next_page')
  String? get nextPage;
  @override
  @JsonKey(ignore: true)
  _$$_WallpaperModelCopyWith<_$_WallpaperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  int? get id => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get photographer => throw _privateConstructorUsedError;
  @JsonKey(name: 'photographer_url')
  String? get photographerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'photographer_id')
  int? get photographerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_color')
  String? get avgColor => throw _privateConstructorUsedError;
  Src? get src => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;
  String? get alt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call(
      {int? id,
      int? width,
      int? height,
      String? url,
      String? photographer,
      @JsonKey(name: 'photographer_url') String? photographerUrl,
      @JsonKey(name: 'photographer_id') int? photographerId,
      @JsonKey(name: 'avg_color') String? avgColor,
      Src? src,
      bool? liked,
      String? alt});

  $SrcCopyWith<$Res>? get src;
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
    Object? alt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer: freezed == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerUrl: freezed == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerId: freezed == photographerId
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int?,
      avgColor: freezed == avgColor
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SrcCopyWith<$Res>? get src {
    if (_value.src == null) {
      return null;
    }

    return $SrcCopyWith<$Res>(_value.src!, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$_PhotoCopyWith(_$_Photo value, $Res Function(_$_Photo) then) =
      __$$_PhotoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? width,
      int? height,
      String? url,
      String? photographer,
      @JsonKey(name: 'photographer_url') String? photographerUrl,
      @JsonKey(name: 'photographer_id') int? photographerId,
      @JsonKey(name: 'avg_color') String? avgColor,
      Src? src,
      bool? liked,
      String? alt});

  @override
  $SrcCopyWith<$Res>? get src;
}

/// @nodoc
class __$$_PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res, _$_Photo>
    implements _$$_PhotoCopyWith<$Res> {
  __$$_PhotoCopyWithImpl(_$_Photo _value, $Res Function(_$_Photo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    Object? alt = freezed,
  }) {
    return _then(_$_Photo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer: freezed == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerUrl: freezed == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerId: freezed == photographerId
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int?,
      avgColor: freezed == avgColor
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Photo implements _Photo {
  const _$_Photo(
      {this.id,
      this.width,
      this.height,
      this.url,
      this.photographer,
      @JsonKey(name: 'photographer_url') this.photographerUrl,
      @JsonKey(name: 'photographer_id') this.photographerId,
      @JsonKey(name: 'avg_color') this.avgColor,
      this.src,
      this.liked,
      this.alt});

  factory _$_Photo.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoFromJson(json);

  @override
  final int? id;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? url;
  @override
  final String? photographer;
  @override
  @JsonKey(name: 'photographer_url')
  final String? photographerUrl;
  @override
  @JsonKey(name: 'photographer_id')
  final int? photographerId;
  @override
  @JsonKey(name: 'avg_color')
  final String? avgColor;
  @override
  final Src? src;
  @override
  final bool? liked;
  @override
  final String? alt;

  @override
  String toString() {
    return 'Photo(id: $id, width: $width, height: $height, url: $url, photographer: $photographer, photographerUrl: $photographerUrl, photographerId: $photographerId, avgColor: $avgColor, src: $src, liked: $liked, alt: $alt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Photo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.photographer, photographer) ||
                other.photographer == photographer) &&
            (identical(other.photographerUrl, photographerUrl) ||
                other.photographerUrl == photographerUrl) &&
            (identical(other.photographerId, photographerId) ||
                other.photographerId == photographerId) &&
            (identical(other.avgColor, avgColor) ||
                other.avgColor == avgColor) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, width, height, url,
      photographer, photographerUrl, photographerId, avgColor, src, liked, alt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoCopyWith<_$_Photo> get copyWith =>
      __$$_PhotoCopyWithImpl<_$_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoToJson(
      this,
    );
  }
}

abstract class _Photo implements Photo {
  const factory _Photo(
      {final int? id,
      final int? width,
      final int? height,
      final String? url,
      final String? photographer,
      @JsonKey(name: 'photographer_url') final String? photographerUrl,
      @JsonKey(name: 'photographer_id') final int? photographerId,
      @JsonKey(name: 'avg_color') final String? avgColor,
      final Src? src,
      final bool? liked,
      final String? alt}) = _$_Photo;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$_Photo.fromJson;

  @override
  int? get id;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get url;
  @override
  String? get photographer;
  @override
  @JsonKey(name: 'photographer_url')
  String? get photographerUrl;
  @override
  @JsonKey(name: 'photographer_id')
  int? get photographerId;
  @override
  @JsonKey(name: 'avg_color')
  String? get avgColor;
  @override
  Src? get src;
  @override
  bool? get liked;
  @override
  String? get alt;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoCopyWith<_$_Photo> get copyWith =>
      throw _privateConstructorUsedError;
}

Src _$SrcFromJson(Map<String, dynamic> json) {
  return _Src.fromJson(json);
}

/// @nodoc
mixin _$Src {
  String? get original => throw _privateConstructorUsedError;
  String? get large2X => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;
  String? get portrait => throw _privateConstructorUsedError;
  String? get landscape => throw _privateConstructorUsedError;
  String? get tiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SrcCopyWith<Src> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SrcCopyWith<$Res> {
  factory $SrcCopyWith(Src value, $Res Function(Src) then) =
      _$SrcCopyWithImpl<$Res, Src>;
  @useResult
  $Res call(
      {String? original,
      String? large2X,
      String? large,
      String? medium,
      String? small,
      String? portrait,
      String? landscape,
      String? tiny});
}

/// @nodoc
class _$SrcCopyWithImpl<$Res, $Val extends Src> implements $SrcCopyWith<$Res> {
  _$SrcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      large2X: freezed == large2X
          ? _value.large2X
          : large2X // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: freezed == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: freezed == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SrcCopyWith<$Res> implements $SrcCopyWith<$Res> {
  factory _$$_SrcCopyWith(_$_Src value, $Res Function(_$_Src) then) =
      __$$_SrcCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? original,
      String? large2X,
      String? large,
      String? medium,
      String? small,
      String? portrait,
      String? landscape,
      String? tiny});
}

/// @nodoc
class __$$_SrcCopyWithImpl<$Res> extends _$SrcCopyWithImpl<$Res, _$_Src>
    implements _$$_SrcCopyWith<$Res> {
  __$$_SrcCopyWithImpl(_$_Src _value, $Res Function(_$_Src) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_Src(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      large2X: freezed == large2X
          ? _value.large2X
          : large2X // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: freezed == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: freezed == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Src implements _Src {
  const _$_Src(
      {this.original,
      this.large2X,
      this.large,
      this.medium,
      this.small,
      this.portrait,
      this.landscape,
      this.tiny});

  factory _$_Src.fromJson(Map<String, dynamic> json) => _$$_SrcFromJson(json);

  @override
  final String? original;
  @override
  final String? large2X;
  @override
  final String? large;
  @override
  final String? medium;
  @override
  final String? small;
  @override
  final String? portrait;
  @override
  final String? landscape;
  @override
  final String? tiny;

  @override
  String toString() {
    return 'Src(original: $original, large2X: $large2X, large: $large, medium: $medium, small: $small, portrait: $portrait, landscape: $landscape, tiny: $tiny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Src &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.large2X, large2X) || other.large2X == large2X) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.portrait, portrait) ||
                other.portrait == portrait) &&
            (identical(other.landscape, landscape) ||
                other.landscape == landscape) &&
            (identical(other.tiny, tiny) || other.tiny == tiny));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, original, large2X, large, medium,
      small, portrait, landscape, tiny);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SrcCopyWith<_$_Src> get copyWith =>
      __$$_SrcCopyWithImpl<_$_Src>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SrcToJson(
      this,
    );
  }
}

abstract class _Src implements Src {
  const factory _Src(
      {final String? original,
      final String? large2X,
      final String? large,
      final String? medium,
      final String? small,
      final String? portrait,
      final String? landscape,
      final String? tiny}) = _$_Src;

  factory _Src.fromJson(Map<String, dynamic> json) = _$_Src.fromJson;

  @override
  String? get original;
  @override
  String? get large2X;
  @override
  String? get large;
  @override
  String? get medium;
  @override
  String? get small;
  @override
  String? get portrait;
  @override
  String? get landscape;
  @override
  String? get tiny;
  @override
  @JsonKey(ignore: true)
  _$$_SrcCopyWith<_$_Src> get copyWith => throw _privateConstructorUsedError;
}
