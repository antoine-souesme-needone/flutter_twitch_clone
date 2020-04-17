import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/theme/app_colors.dart';

class AppAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final IconData leadingIcon;
  final bool leadingEnabled;

  const AppAppBar({
    Key key,
    this.title = '',
    this.leadingIcon = FeatherIcons.chevronLeft,
    this.leadingEnabled = true,
  }) : super(key: key);

  @override
  _AppAppBarState createState() => _AppAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(38);
}

class _AppAppBarState extends State<AppAppBar> {
  void _handleButtonTapped() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        iconTheme: IconThemeData(color: AppColors.black),
        automaticallyImplyLeading: false,
        leading: (widget.leadingEnabled)
            ? IconButton(
                icon: Icon(
                  widget.leadingIcon,
                ),
                onPressed: () {
                  _handleButtonTapped();
                },
              )
            : null,
        title: Text(
          widget.title,
          style: TextStyle(
            color: AppColors.black,
            fontSize: 16,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
