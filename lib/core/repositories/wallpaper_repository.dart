import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:wallpaper_hub/core/app_configs/htp_custom_error.dart';
import 'package:wallpaper_hub/core/constants/constant.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';
import 'package:wallpaper_hub/core/services/http_service.dart';

class WallpaperRepository {
  final HttpService _httpService;
  WallpaperRepository({
    required HttpService httpService,
  }) : _httpService = httpService;

  Future<List<dynamic>> fetchImages() async {
    final path = Constants.baseURL;
    try {
      final response = await _httpService.handleGetRequest(path);
      return (response.data).map((e) => WallpaperModel.fromJson(e)).toList();
    } on DioError catch (e) {
      throw HtpCustomError(
        message: e.response?.data["errors"][0] ?? "Something went wrong",
        code: e.message,
      );
    }
  }

  Future<List<WallpaperModel>> searchImages(String imageName) async {
    final path = Constants.baseURL;
    try {
      final response = await _httpService.handlePostRequest(path, {
        "type": imageName,
      });
      debugPrint(response.data);
      return (response.data as List)
          .map((e) => WallpaperModel.fromJson(e))
          .toList();
    } on DioError catch (e) {
      throw HtpCustomError(
        message: e.response?.data["errors"][0] ?? "Something went wrong",
        code: e.message,
      );
    }
  }
}
