import 'package:dio/dio.dart';
import 'package:wallpaper_hub/core/app_configs/htp_custom_error.dart';
import 'package:wallpaper_hub/core/constants/constant.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';
import 'package:wallpaper_hub/core/services/http_service.dart';

class WallpaperRepository {
  final HttpService _httpService;
  WallpaperRepository({
    required HttpService httpService,
  }) : _httpService = httpService;

  Future<List<dynamic>> fetchImages({
    String path = Constants.baseURL,
    required int page,
  }) async {
    try {
      final response = await _httpService.handleGetRequest("$path$page");
      return (response.data['photos'])
          .map((e) => WallpaperModel.fromJson(e))
          .toList();
    } on DioError catch (e) {
      throw HtpCustomError(
        message: e.message,
        code: e.response?.statusCode.toString(),
      );
    }
  }
}
