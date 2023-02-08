import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:wallpaper_hub/firebase_options.dart';
import 'package:wallpaper_hub/src/pages/material_app_home.dart';

import 'src/crashlytics/crashlytics.dart';

Logger _log = Logger('main.dart');

Future<void> main() async {
  FirebaseCrashlytics? crashlytics;
  if (!kIsWeb && (Platform.isIOS || Platform.isAndroid)) {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      crashlytics = FirebaseCrashlytics.instance;
    } catch (e) {
      debugPrint("Firebase couldn't be initialized: $e");
    }
  }

  await guardWithCrashlytics(
    guardedMain,
    crashlytics: crashlytics,
  );
}

/// Without logging and crash reporting, this would be `void main()`.
Future<void> guardedMain() async {
  if (kReleaseMode) {
    // Don't log anything below warnings in production.
    Logger.root.level = Level.WARNING;
  }
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: '
        '${record.loggerName}: '
        '${record.message}');
  });

  _log.info('App started in production mode 🚀');

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  _log.info('Going Portrait mode screen 👹');

  runApp(const MaterialAppHome());
}
