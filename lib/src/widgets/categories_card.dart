import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/utils/configs.dart';
import 'package:wallpaper_hub/core/utils/extension/context_extension.dart';
import 'package:wallpaper_hub/src/cubit/wallpaper_cubit.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final _cardWith = context.width * 0.23;
    final _cardHeight = context.height * 0.065;
    return SizedBox(
      height: context.height * 0.065,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Configs.instance.categoriesTitle.length - 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: GestureDetector(
              onTap: () async {
                await context.read<WallpaperCubit>().searchWallpapers(
                    searchText: Configs.instance.categoriesTitle[index]);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      width: _cardWith,
                      height: _cardHeight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          imageUrl: Configs.instance.categoriesImges[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: _cardWith,
                      height: _cardHeight,
                      alignment: Alignment.center,
                      child: Text(
                        Configs.instance.categoriesTitle[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.25,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
