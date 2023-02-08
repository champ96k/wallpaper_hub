// ignore_for_file: unnecessary_lambdas, cascade_invocations

import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:wallpaper_hub/core/repository/repository.dart';
import 'package:wallpaper_hub/core/services/network_services/dio_http_service.dart';
import 'package:wallpaper_hub/core/services/network_services/http_service.dart';

GetIt getIt = GetIt.instance;

void serviceLoactor() {
  final Logger _log = Logger('serviceLoactor');

  _log.info('dependency injection ⛩');

  getIt.registerFactory<HttpService>(() => DioHttpService());

  getIt.registerSingleton<Repository>(
    Repository(httpService: getIt.get<HttpService>()),
  );
}
