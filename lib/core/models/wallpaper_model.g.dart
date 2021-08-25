// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallpaper_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WallpaperModel _$_$_WallpaperModelFromJson(Map<String, dynamic> json) {
  return _$_WallpaperModel(
    id: json['id'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    width: json['width'] as int?,
    height: json['height'] as int?,
    color: json['color'] as String?,
    blurHash: json['blurHash'] as String?,
    description: json['description'] as String?,
    altDescription: json['altDescription'] as String?,
    urls: json['urls'] == null
        ? null
        : Urls.fromJson(json['urls'] as Map<String, dynamic>),
    links: json['links'] == null
        ? null
        : WallpaperModelLinks.fromJson(json['links'] as Map<String, dynamic>),
    categories: json['categories'] as List<dynamic>? ?? [],
    likes: json['likes'] as int?,
    likedByUser: json['likedByUser'] as bool?,
    currentUserCollections:
        json['currentUserCollections'] as List<dynamic>? ?? [],
    sponsorship: json['sponsorship'] == null
        ? null
        : Sponsorship.fromJson(json['sponsorship'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_WallpaperModelToJson(_$_WallpaperModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blurHash': instance.blurHash,
      'description': instance.description,
      'altDescription': instance.altDescription,
      'urls': instance.urls,
      'links': instance.links,
      'categories': instance.categories,
      'likes': instance.likes,
      'likedByUser': instance.likedByUser,
      'currentUserCollections': instance.currentUserCollections,
      'sponsorship': instance.sponsorship,
      'user': instance.user,
    };

_$_WallpaperModelLinks _$_$_WallpaperModelLinksFromJson(
    Map<String, dynamic> json) {
  return _$_WallpaperModelLinks(
    self: json['self'] as String?,
    html: json['html'] as String?,
    download: json['download'] as String?,
    downloadLocation: json['downloadLocation'] as String?,
  );
}

Map<String, dynamic> _$_$_WallpaperModelLinksToJson(
        _$_WallpaperModelLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'download': instance.download,
      'downloadLocation': instance.downloadLocation,
    };

_$_Sponsorship _$_$_SponsorshipFromJson(Map<String, dynamic> json) {
  return _$_Sponsorship(
    impressionUrls: (json['impressionUrls'] as List<dynamic>?)
        ?.map((e) => e as String?)
        .toList(),
    tagline: json['tagline'] as String?,
    taglineUrl: json['taglineUrl'] as String?,
    sponsor: json['sponsor'] == null
        ? null
        : User.fromJson(json['sponsor'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SponsorshipToJson(_$_Sponsorship instance) =>
    <String, dynamic>{
      'impressionUrls': instance.impressionUrls,
      'tagline': instance.tagline,
      'taglineUrl': instance.taglineUrl,
      'sponsor': instance.sponsor,
    };

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    username: json['username'] as String?,
    name: json['name'] as String?,
    firstName: json['firstName'] as String?,
    lastName: json['lastName'] as String?,
    twitterUsername: json['twitterUsername'] as String?,
    portfolioUrl: json['portfolioUrl'] as String?,
    bio: json['bio'] as String?,
    links: json['links'] == null
        ? null
        : UserLinks.fromJson(json['links'] as Map<String, dynamic>),
    profileImage: json['profileImage'] == null
        ? null
        : ProfileImage.fromJson(json['profileImage'] as Map<String, dynamic>),
    instagramUsername: json['instagramUsername'] as String?,
    totalCollections: json['totalCollections'] as int?,
    totalLikes: json['totalLikes'] as int?,
    totalPhotos: json['totalPhotos'] as int?,
    acceptedTos: json['acceptedTos'] as bool?,
    forHire: json['forHire'] as bool?,
    social: json['social'] == null
        ? null
        : Social.fromJson(json['social'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'username': instance.username,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'twitterUsername': instance.twitterUsername,
      'portfolioUrl': instance.portfolioUrl,
      'bio': instance.bio,
      'links': instance.links,
      'profileImage': instance.profileImage,
      'instagramUsername': instance.instagramUsername,
      'totalCollections': instance.totalCollections,
      'totalLikes': instance.totalLikes,
      'totalPhotos': instance.totalPhotos,
      'acceptedTos': instance.acceptedTos,
      'forHire': instance.forHire,
      'social': instance.social,
    };

_$_UserLinks _$_$_UserLinksFromJson(Map<String, dynamic> json) {
  return _$_UserLinks(
    self: json['self'] as String?,
    html: json['html'] as String?,
    photos: json['photos'] as String?,
    likes: json['likes'] as String?,
    portfolio: json['portfolio'] as String?,
    following: json['following'] as String?,
    followers: json['followers'] as String?,
  );
}

Map<String, dynamic> _$_$_UserLinksToJson(_$_UserLinks instance) =>
    <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'photos': instance.photos,
      'likes': instance.likes,
      'portfolio': instance.portfolio,
      'following': instance.following,
      'followers': instance.followers,
    };

_$_ProfileImage _$_$_ProfileImageFromJson(Map<String, dynamic> json) {
  return _$_ProfileImage(
    small: json['small'] as String?,
    medium: json['medium'] as String?,
    large: json['large'] as String?,
  );
}

Map<String, dynamic> _$_$_ProfileImageToJson(_$_ProfileImage instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };

_$_Social _$_$_SocialFromJson(Map<String, dynamic> json) {
  return _$_Social(
    instagramUsername: json['instagramUsername'] as String?,
    portfolioUrl: json['portfolioUrl'] as String?,
    twitterUsername: json['twitterUsername'] as String?,
  );
}

Map<String, dynamic> _$_$_SocialToJson(_$_Social instance) => <String, dynamic>{
      'instagramUsername': instance.instagramUsername,
      'portfolioUrl': instance.portfolioUrl,
      'twitterUsername': instance.twitterUsername,
    };

_$_Urls _$_$_UrlsFromJson(Map<String, dynamic> json) {
  return _$_Urls(
    raw: json['raw'] as String?,
    full: json['full'] as String?,
    regular: json['regular'] as String?,
    small: json['small'] as String?,
    thumb: json['thumb'] as String?,
  );
}

Map<String, dynamic> _$_$_UrlsToJson(_$_Urls instance) => <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
    };
