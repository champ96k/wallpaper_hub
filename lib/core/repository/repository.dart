import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:wallpaper_hub/core/constants/constants.dart';
import 'package:wallpaper_hub/core/error/custom_error.dart';
import 'package:wallpaper_hub/core/model/wallpaper_model.dart';
import 'package:wallpaper_hub/core/services/network_services/http_service.dart';

final Logger _log = Logger('repository.dart');

class Repository {
  Repository({required this.httpService});

  final HttpService httpService;

  Future<WallpaperModel> fecthWallpapers({required String path}) async {
    try {
      final _response = await httpService.handleGetRequest(path);
      if (_response.statusCode! >= 200 && _response.statusCode! <= 300) {
        return WallpaperModel.fromJson(_response.data);
      } else {
        throw CustomError(
          code: _response.statusCode.toString(),
          message: _response.statusMessage,
        );
      }
    } on DioError catch (e) {
      _log.info("Error: $e");
      final _message = e.response?.data?['message'] ?? '';
      throw CustomError(message: _message);
    } catch (e) {
      _log.info("Error: $e");
      throw CustomError(message: '${Constants.somethingWentWrong} $e');
    }
  }

  Future<WallpaperModel> searchWallpapers({required String searchText}) async {
    try {
      final path =
          "https://api.pexels.com/v1/search?query=$searchText&per_page=15&page=1";

      final _response = await httpService.handleGetRequest(path);
      if (_response.statusCode! >= 200 && _response.statusCode! <= 300) {
        return WallpaperModel.fromJson(_response.data);
      } else {
        throw CustomError(
          code: _response.statusCode.toString(),
          message: _response.statusMessage,
        );
      }
    } on DioError catch (e) {
      _log.info("Error: $e");
      final _message = e.response?.data?['message'] ?? '';
      throw CustomError(message: _message);
    } catch (e) {
      _log.info("Error: $e");
      throw CustomError(message: '${Constants.somethingWentWrong} $e');
    }
  }
}
