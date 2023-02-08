import 'dart:async';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logging/logging.dart';
import 'package:wallpaper_hub/core/dependency_injection/service_locator.dart';
import 'package:wallpaper_hub/core/utils/configs.dart';

class GamesServicesController {
  static final Logger _log = Logger('GamesServicesController.dart');

  Future<void> initialize() async {
    try {
      _log.info('initializing games services');

      await Future.wait([
        _initConfigs(),
        _setupHive(),
      ]);
      serviceLoactor();
    } catch (e) {
      _log.severe('Cannot initialize GamesServices: $e');
    }
  }

  Future<void> _initConfigs() async {
    final configs = Configs(FirebaseRemoteConfig.instance);
    await configs.setupRemoteConfig();
  }

  Future<void> _setupHive() async {
    await Hive.initFlutter();
    // if (!Hive.isAdapterRegistered(1)) {
    //   Hive.registerAdapter(UserModelAdapter());
    // }

    // await Future.wait([
    //   Hive.openBox(HiveConfig.userConfigurationBox),
    //   Hive.openBox(HiveConfig.bannerBox),
    // ]);

    _log.info('Hive Initialized ⛑');
  }
}
