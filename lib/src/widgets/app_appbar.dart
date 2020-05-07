import 'dart:ui';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/theme/app_colors.dart';

class AppAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final IconData leadingIcon;
  final bool leadingEnabled;
  final bool isBase;
  final bool showSettings;

  const AppAppBar({
    Key key,
    this.title = '',
    this.leadingIcon = FeatherIcons.chevronLeft,
    this.leadingEnabled = true,
    this.isBase = false,
    this.showSettings = false,
  }) : super(key: key);

  @override
  _AppAppBarState createState() => _AppAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(999);
}

class _AppAppBarState extends State<AppAppBar> {
  void _handleButtonTapped() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return buildAppBar();
  }

  Widget buildAppBar() {
    if (widget.isBase) {
      return Stack(
        children: <Widget>[
          Container(
            height: 88,
            child: BackdropFilter(
              
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(color: AppColors.mainBackground.withOpacity(0.9)),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.transparent),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      child: GestureDetector(
                        onTap: () {},
                        child: ClipOval(
                          child: Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(color: AppColors.primary),
                            child: Icon(
                              FeatherIcons.user,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            FeatherIcons.bell,
                            size: 22,
                          ),
                        ),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            FeatherIcons.messageSquare,
                            size: 22,
                          ),
                        ),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            FeatherIcons.search,
                            size: 22,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          
        ],
      );
    } else {
      return Container(
        decoration: BoxDecoration(color: Colors.transparent),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Align(
                    heightFactor: 1,
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: _handleButtonTapped,
                      child: Icon(widget.leadingIcon),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Expanded(child: SizedBox(width: 24, height: 24)),
              ],
            ),
          ),
        ),
      );
      // return AppBar(
      //   iconTheme: IconThemeData(color: AppColors.black),
      //   automaticallyImplyLeading: false,
      //   leading: (widget.leadingEnabled)
      //       ? IconButton(
      //           icon: Icon(
      //             widget.leadingIcon,
      //           ),
      //           onPressed: () {
      //             _handleButtonTapped();
      //           },
      //         )
      //       : null,
      //   title: Text(
      //     widget.title,
      //     style: TextStyle(
      //       color: AppColors.black,
      //       fontSize: 16,
      //     ),
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // );
    }
  }
}
