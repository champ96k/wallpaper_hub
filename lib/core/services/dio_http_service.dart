import 'package:dio/dio.dart';
import 'package:wallpaper_hub/core/services/http_service.dart';

class DioHttpService implements HttpService {
  final Dio _dio = Dio();

  @override
  Future<Response> handleGetRequest(String? path) async {
    final res = await _dio.get(
      path!,
      options: Options(
        headers: {
          //  "x-auth-token": "$token",
        },
      ),
    );
    return res;
  }

  @override
  Future<Response> handlePostRequest(String path,
      [Map<String, dynamic>? data]) async {
    var res = await _dio.post(
      path,
      data: data,
      options: Options(
        headers: {
          //   "x-auth-token": "$token",
          'Content-Type': 'application/json; charset=utf-8'
        },
      ),
    );

    return res;
  }

  @override
  Future<Response> handlePutRequest(String path,
      [Map<String, dynamic>? data]) async {
    var res = await _dio.put(
      path,
      data: data,
      options: Options(
        headers: {
          //  "x-auth-token": "$token",
        },
      ),
    );
    return res;
  }

  Future<Response> handlePatchRequest(String path,
      [Map<String, dynamic>? data]) async {
    var res = await _dio.patch(
      path,
      data: data,
      options: Options(
        headers: {
          //   "x-auth-token": "$token",
        },
      ),
    );
    return res;
  }
}
