import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wallpaper_hub/core/app_configs/hive_config.dart';
import 'package:wallpaper_hub/core/models/wallpaper_model.dart';
import 'package:wallpaper_hub/src/bookmark/bookmark_screen.dart';
import 'package:wallpaper_hub/src/home_screen/home_screen.dart';

class MaterialAppHome extends StatefulWidget {
  const MaterialAppHome({Key? key}) : super(key: key);

  @override
  _MaterialAppHomeState createState() => _MaterialAppHomeState();
}

class _MaterialAppHomeState extends State<MaterialAppHome>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    initilized();
    _tabController = TabController(length: 2, vsync: this);
  }

  Future<void> initilized() async {
    Directory directory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(directory.path);
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(WallpaperModelAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(SrcAdapter());
    }

    await Future.wait([
      Hive.openBox<WallpaperModel>(HiveConfig.wallpaperBox),
      Hive.openBox<WallpaperModel>(HiveConfig.srcBox),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        brightness: Brightness.dark,
        centerTitle: true,
        title: Wrap(
          children: [
            const Text(
              "Wallpaper",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              "Hub",
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(child: _tabBarBuilder("Explore")),
            Tab(child: _tabBarBuilder('Bookmark'))
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          HomeScreen(),
          BookmarkScreen(),
        ],
      ),
    );
  }

  Widget _tabBarBuilder(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.indigo,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.75,
      ),
    );
  }
}
