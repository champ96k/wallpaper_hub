import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:wallpaper_hub/core/cubit/home_screen_cubit.dart';
import 'package:wallpaper_hub/core/repositories/wallpaper_repository.dart';
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
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenCubit>(
      create: (context) => HomeScreenCubit(
        repository: GetIt.I<WallpaperRepository>(),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          brightness: Brightness.dark,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark,
                color: Colors.grey,
              ),
            )
          ],
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
