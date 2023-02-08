import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/src/cubit/wallpaper_cubit.dart';

class SearchCard extends StatefulWidget {
  const SearchCard({super.key});

  @override
  State<SearchCard> createState() => _SearchCardState();
}

class _SearchCardState extends State<SearchCard> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(12.0)),
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: TextField(
          controller: _controller,
          onChanged: (value) {},
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: GestureDetector(
                onTap: () async {
                  if (_controller.text.isNotEmpty) {
                    context
                        .read<WallpaperCubit>()
                        .searchWallpapers(searchText: _controller.text);
                  }
                },
                child: const Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
