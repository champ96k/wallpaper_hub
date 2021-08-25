import 'package:dio/dio.dart';

abstract class HttpService {
  Future<Response> handleGetRequest(String path);
  Future<Response> handlePostRequest(String path, [Map<String, dynamic> data]);
  Future<Response> handlePutRequest(String path, [Map<String, dynamic> data]);
}
