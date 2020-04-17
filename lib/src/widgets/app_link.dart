import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/theme/app_colors.dart';

class AppLink extends StatefulWidget {
  final String text;
  final Function onPressed;

  const AppLink({
    Key key,
    this.onPressed,
    this.text,
  }) : super(key: key);

  @override
  _AppLinkState createState() => _AppLinkState();
}

class _AppLinkState extends State<AppLink> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Text(
        widget.text,
        style: TextStyle(
          color: AppColors.primary,
          fontSize: 16
        ),
      ),
    );
  }
}
