import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/pages/auth/welcome_page.dart';
import 'package:flutter_twitch_clone/src/theme/app_colors.dart';

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
        cursorColor: AppColors.primary,
        backgroundColor: AppColors.mainBackground,
        primarySwatch: MaterialColor(
          0xFF814CFB,
          {
            50: Color.fromARGB(255, 129, 76, 251),
            100: Color.fromARGB(255, 129, 76, 251),
            200: Color.fromARGB(255, 129, 76, 251),
            300: Color.fromARGB(255, 129, 76, 251),
            400: Color.fromARGB(255, 129, 76, 251),
            500: Color.fromARGB(255, 129, 76, 251),
            600: Color.fromARGB(255, 129, 76, 251),
            700: Color.fromARGB(255, 129, 76, 251),
            800: Color.fromARGB(255, 129, 76, 251),
            900: Color.fromARGB(255, 129, 76, 251),
          },
        ),
        fontFamily: 'Roobert',
      ),
      home: WelcomePage(),
    );
  }
}
