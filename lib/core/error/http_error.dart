import 'dart:io';

class HttpError extends HttpException {
  final int statusCode;
  HttpError(String message, this.statusCode, Uri uri) : super(message);
}
