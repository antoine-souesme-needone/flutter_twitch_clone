import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/pages/mains/browse_page.dart';
import 'package:flutter_twitch_clone/src/pages/mains/discover_page.dart';
import 'package:flutter_twitch_clone/src/pages/mains/following_page.dart';
import 'package:flutter_twitch_clone/src/theme/app_colors.dart';

class MainTabNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.heart),
            activeIcon: Icon(FeatherIcons.heart, color: AppColors.primary),
            title: Text('Suivis'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.compass),
            activeIcon: Icon(FeatherIcons.compass, color: AppColors.primary),
            title: Text('Découvrir'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.copy),
            activeIcon: Icon(FeatherIcons.copy, color: AppColors.primary),
            title: Text('Parcourir'),
          ),
        ],
        iconSize: 24,
        backgroundColor: AppColors.mainTabNavigatorBackground,
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: FollowingPage(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: DiscoverPage(),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: BrowsePage(),
              );
            });

          // Default, return dashboard
          default:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: FollowingPage(),
              );
            });
        }
      },
    );
  }
}