import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/pages/auth/login_page.dart';
import 'package:flutter_twitch_clone/src/theme/app_text_styles.dart';
import 'package:flutter_twitch_clone/src/widgets/app_button.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (BuildContext context) => SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Bienvenue sur Twitch',
                    style: AppTextStyles.title,
                  ),
                  SizedBox(height: 40),
                  AppButton.text(
                    primary: true,
                    full: true,
                    text: 'Se connecter',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
                    },
                  ),
                  SizedBox(height: 15),
                  AppButton.text(
                    full: true,
                    text: 'S\'inscrire',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
