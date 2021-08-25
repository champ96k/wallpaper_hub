import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallpaper_model.freezed.dart';
part 'wallpaper_model.g.dart';

@freezed
abstract class WallpaperModel with _$WallpaperModel {
  const factory WallpaperModel({
    required String id,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? width,
    int? height,
    String? color,
    String? blurHash,
    String? description,
    String? altDescription,
    Urls? urls,
    WallpaperModelLinks? links,
    @Default([]) List<dynamic> categories,
    int? likes,
    bool? likedByUser,
    @Default([]) List<dynamic> currentUserCollections,
    Sponsorship? sponsorship,
    User? user,
  }) = _WallpaperModel;

  factory WallpaperModel.fromJson(Map<String, dynamic> json) =>
      _$WallpaperModelFromJson(json);
}

@freezed
abstract class WallpaperModelLinks with _$WallpaperModelLinks {
  const factory WallpaperModelLinks({
    String? self,
    String? html,
    String? download,
    String? downloadLocation,
  }) = _WallpaperModelLinks;

  factory WallpaperModelLinks.fromJson(Map<String, dynamic> json) =>
      _$WallpaperModelLinksFromJson(json);
}

@freezed
abstract class Sponsorship with _$Sponsorship {
  const factory Sponsorship({
    List<String?>? impressionUrls,
    String? tagline,
    String? taglineUrl,
    User? sponsor,
  }) = _Sponsorship;

  factory Sponsorship.fromJson(Map<String, dynamic> json) =>
      _$SponsorshipFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    String? id,
    DateTime? updatedAt,
    String? username,
    String? name,
    String? firstName,
    String? lastName,
    String? twitterUsername,
    String? portfolioUrl,
    String? bio,
    UserLinks? links,
    ProfileImage? profileImage,
    String? instagramUsername,
    int? totalCollections,
    int? totalLikes,
    int? totalPhotos,
    bool? acceptedTos,
    bool? forHire,
    Social? social,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class UserLinks with _$UserLinks {
  const factory UserLinks({
    String? self,
    String? html,
    String? photos,
    String? likes,
    String? portfolio,
    String? following,
    String? followers,
  }) = _UserLinks;

  factory UserLinks.fromJson(Map<String, dynamic> json) =>
      _$UserLinksFromJson(json);
}

@freezed
abstract class ProfileImage with _$ProfileImage {
  const factory ProfileImage({
    String? small,
    String? medium,
    String? large,
  }) = _ProfileImage;

  factory ProfileImage.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageFromJson(json);
}

@freezed
abstract class Social with _$Social {
  const factory Social({
    String? instagramUsername,
    String? portfolioUrl,
    String? twitterUsername,
  }) = _Social;

  factory Social.fromJson(Map<String, dynamic> json) => _$SocialFromJson(json);
}

@freezed
abstract class Urls with _$Urls {
  const factory Urls({
    String? raw,
    String? full,
    String? regular,
    String? small,
    String? thumb,
  }) = _Urls;

  factory Urls.fromJson(Map<String, dynamic> json) => _$UrlsFromJson(json);
}
