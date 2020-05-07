import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/theme/app_colors.dart';
import 'package:flutter_twitch_clone/src/theme/app_text_styles.dart';
import 'package:flutter_twitch_clone/src/widgets/app_appbar.dart';
import 'package:sticky_headers/sticky_headers.dart';

class FollowingPage extends StatefulWidget {
  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      extendBodyBehindAppBar: false,
      appBar: AppAppBar(isBase: true),
      body: Builder(
        builder: (BuildContext context) => ListView(
          padding: EdgeInsets.only(left: 20, right: 20),
          children: <Widget>[
            // Title
            Text('Suivis', style: AppTextStyles.title.copyWith(letterSpacing: 0)),

            StickyHeader(
              header: Container(
                decoration: BoxDecoration(
                  color: AppColors.mainBackground,
                  border: Border.all(color: AppColors.mainBackground),
                ),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'CHAÎNES LIVE',
                  style: TextStyle(
                    color: AppColors.stickyHeaderGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
              content: Column(
                children: <Widget>[
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                  Text('Container of the sticky'),
                ],
              ),
            ),
            // Text('CHAÎNES LIVE')
          ],
        ),
      ),
    );
  }
}
