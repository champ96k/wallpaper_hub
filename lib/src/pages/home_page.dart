import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_hub/core/constants/constants.dart';
import 'package:wallpaper_hub/src/widgets/categories_card.dart';
import 'package:wallpaper_hub/src/widgets/search_card.dart';
import 'package:wallpaper_hub/src/widgets/wallpaper_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          primary: true,
          physics: const ScrollPhysics(),
          child: Column(
            children: const [
              SizedBox(height: 16.0),
              SearchCard(),
              SizedBox(height: 12.0),
              CategoriesCard(),
              SizedBox(height: 12.0),
              WallpaperList(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const ListTile(
        leading: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(Constants.profilePic),
        ),
        title: Text("Hello John!"),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.circle_notifications,
            size: 32.0,
          ),
        ),
      ],
    );
  }
}
