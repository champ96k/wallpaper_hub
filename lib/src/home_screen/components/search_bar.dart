import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper_hub/core/cubit/home_screen_cubit/home_screen_cubit.dart';
import 'package:wallpaper_hub/src/home_screen/home_screen.dart';

import '../../../../core/utils/command_extenstion.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String searchText = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(12.0),
        ),
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 5.0,
          ),
          child: TextField(
            autocorrect: true,
            textInputAction: TextInputAction.search,
            onChanged: (value) {
              searchText = value;
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: " Search",
              suffixIcon: IconButton(
                onPressed: () {
                  if (searchText.length > 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BlocProvider.value(
                          value: BlocProvider.of<HomeScreenCubit>(context),
                          child: HomeScreen(searchText: searchText),
                        ),
                      ),
                    );
                  } else {
                    "Please enter something".showSnackBar(context);
                  }
                },
                icon: const Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
