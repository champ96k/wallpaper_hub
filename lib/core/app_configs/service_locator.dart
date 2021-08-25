import 'package:get_it/get_it.dart';
import 'package:wallpaper_hub/core/repositories/wallpaper_repository.dart';
import 'package:wallpaper_hub/core/services/dio_http_service.dart';
import 'package:wallpaper_hub/core/services/http_service.dart';

GetIt getIt = GetIt.instance;

void serviceLoactor() {
  getIt.registerLazySingleton<HttpService>(() => DioHttpService());
  getIt.registerLazySingleton<WallpaperRepository>(
      () => WallpaperRepository(httpService: GetIt.I<HttpService>()));
}
