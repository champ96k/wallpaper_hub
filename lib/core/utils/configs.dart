import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:logging/logging.dart';

final Logger _log = Logger('configs.dart');

class Configs {
  factory Configs(FirebaseRemoteConfig remoteConfig) {
    _configs._remoteConfig = remoteConfig;
    return _configs;
  }
  Configs._internal();

  late FirebaseRemoteConfig _remoteConfig;
  static final Configs _configs = Configs._internal();

  static Configs get instance => _configs;

  Future<void> setupRemoteConfig() async {
    _log.info('Initializing remote config 🔥');
    await _remoteConfig.setDefaults(defaultConfig);
    try {
      await _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: const Duration(hours: 1),
        ),
      );
      await _remoteConfig.fetchAndActivate();
    } on Exception catch (e) {
      _log.info(
          """Unable to fetch remote config. Cached or default values will be used\n\nError: $e""");
    }
  }

  Map<String, dynamic> get _categories {
    String val = _remoteConfig.getString('categories');
    return json.decode(val) as Map<String, dynamic>;
  }

  List<dynamic> get categoriesImges => _categories['categories_imges'] ?? [];
  List<dynamic> get categoriesTitle => _categories['categories_title'] ?? [];

  static final defaultConfig = <String, dynamic>{
    "categories": json.encode({
      "categories_imges": [
        'https://www.stocksy.com/blog/wp-content/uploads/2019/09/Stocksy_comp_2701337.jpg',
        'https://www.stocksy.com/blog/wp-content/uploads/2019/09/Stocksy_comp_1083414-1.jpg',
        'https://www.stocksy.com/blog/wp-content/uploads/2019/09/Stocksy_comp_2757923.jpg',
        'https://www.telegraph.co.uk/content/dam/Travel/Destinations/Asia/India/Mumbai/gateway-of-india-mumbai.jpg',
        'https://www.stocksy.com/blog/wp-content/uploads/2019/09/Stocksy_comp_1413843.jpg',
        'https://tryengineering.org/wp-content/uploads/bigstock-Skyscraper-Glass-Facades-On-A-204198055.jpg',
        'https://www.stocksy.com/blog/wp-content/uploads/2019/09/Stocksy_comp_1287816.jpg',
        'https://www.stocksy.com/blog/wp-content/uploads/2019/09/Stocksy_comp_1231375.jpg',
        'https://www.stocksy.com/blog/wp-content/uploads/2019/09/Stocksy_comp_2588431.jpg',
        'https://www.stocksy.com/blog/wp-content/uploads/2019/09/Stocksy_comp_2457971-1.jpg',
        'https://www.stocksy.com/blog/wp-content/uploads/2019/09/Stocksy_comp_1206759.jpg',
        'https://www.stocksy.com/blog/wp-content/uploads/2019/09/Stocksy_comp_1830479.jpg',
      ],
      "categories_title": [
        "Abstract",
        'Fashion',
        "Food",
        "India",
        "Adventure",
        "Architectural",
        "Black-White",
        "Business",
        "Candid",
        "Creative",
        "Documentary",
        'Event',
      ],
    }),
  };
}
