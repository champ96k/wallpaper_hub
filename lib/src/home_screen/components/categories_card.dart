import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_hub/core/constants/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/cubit/home_screen_cubit.dart';

class CategoriesCard extends StatefulWidget {
  @override
  _CategoriesCardState createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Container(
      height: _size.height * 0.08,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Constants.categoriesTitle.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child: GestureDetector(
              onTap: () {
                context
                    .read<HomeScreenCubit>()
                    .searchImages(Constants.categoriesTitle[index]);
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: _size.width * 0.25,
                      height: _size.height * 0.08,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          imageUrl: Constants.categoriesImg[index],
                          fit: BoxFit.cover,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) {
                            return const Center(
                              child: Text("Loading"),
                            );
                          },
                          errorWidget: (context, url, error) {
                            return const Center(
                              child: Text("Error 404"),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: _size.width * 0.25,
                      height: _size.height * 0.08,
                      alignment: Alignment.center,
                      child: Text(
                        Constants.categoriesTitle[index],
                        style: _textTheme.bodyText2!.copyWith(
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
