import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool? centerTitle;
  final double? height;
  final Color backgroundColor;
  final bool showBackButton;

  CustomAppBar({
    Key? key,
    this.backgroundColor = Colors.white,
    this.height = 55.0,
    this.centerTitle = true,
    this.showBackButton = false,
  })  : preferredSize = Size.fromHeight(height!),
        super(key: key);
  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      brightness: Brightness.dark,
      backgroundColor: widget.backgroundColor,
      centerTitle: widget.centerTitle,
      leading: widget.showBackButton
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            )
          : const Text(""),
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
    );
  }
}
