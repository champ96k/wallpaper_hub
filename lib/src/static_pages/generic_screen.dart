import 'package:flutter/material.dart';
import 'package:wallpaper_hub/gen/assets.gen.dart';

class GenericScreen extends StatefulWidget {
  final String? errorMessage;

  const GenericScreen({
    Key? key,
    this.errorMessage = """We couldn't find the images you\nare looking for.""",
  }) : super(key: key);

  @override
  _ErrorScreenState createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<GenericScreen> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: _size.height * 0.1),
          Assets.images.notFound.image(width: _size.width),
          Text(
            "Whoops!",
            textAlign: TextAlign.center,
            style: _textTheme.headline5!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: _size.height * 0.05),
          Text(
            "${widget.errorMessage}",
            textAlign: TextAlign.center,
            style: _textTheme.subtitle1!.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
