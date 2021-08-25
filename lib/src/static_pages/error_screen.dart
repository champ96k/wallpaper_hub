import 'package:flutter/material.dart';
import 'package:wallpaper_hub/gen/assets.gen.dart';
import 'package:wallpaper_hub/src/widget/primary_button.dart';

class ErrorScreen extends StatefulWidget {
  @override
  _ErrorScreenState createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: _size.height * 0.03),
            Assets.images.crash404Copy.image(width: _size.width),
            Text(
              "Whoops!",
              textAlign: TextAlign.center,
              style: _textTheme.headline5!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: _size.height * 0.02),
            Text(
              """We couldn't find the page you\nare looking for.""",
              textAlign: TextAlign.center,
              style: _textTheme.subtitle1!.copyWith(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: _size.height * 0.1),
            PrimaryButton(
              text: "Refresh",
              onTap: () => setState(() {}),
            )
          ],
        ),
      ),
    );
  }
}
