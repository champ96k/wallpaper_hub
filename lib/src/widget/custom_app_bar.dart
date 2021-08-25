import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final bool? centerTitle;
  final double? height;
  final String title;

  final Color backgroundColor;

  CustomAppBar({
    Key? key,
    this.backgroundColor = Colors.white30,
    this.actions,
    required this.title,
    this.height = 55.0,
    this.centerTitle = true,
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
      ///show status bar black color `Brightness.light`
      ///for white color `Brightness.dark`
      brightness: Brightness.dark,
      backgroundColor: widget.backgroundColor,
      centerTitle: widget.centerTitle,
      actions: widget.actions == null ? [] : widget.actions,
      title: Text(
        widget.title,
        style: const TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
