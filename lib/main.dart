import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/pages/auth/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Twitch Clone',

      // Theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roobert',
      ),
      home: WelcomePage(),
    );
  }
}
