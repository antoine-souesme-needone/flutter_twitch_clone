import 'package:flutter/material.dart';
import 'package:flutter_twitch_clone/src/navigation/main_tab_navigator.dart';
import 'package:flutter_twitch_clone/src/theme/app_colors.dart';
import 'package:flutter_twitch_clone/src/widgets/app_appbar.dart';
import 'package:flutter_twitch_clone/src/widgets/app_button.dart';
import 'package:flutter_twitch_clone/src/widgets/app_input.dart';
import 'package:flutter_twitch_clone/src/widgets/app_link.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _idController = TextEditingController(text: 'Gello');
  TextEditingController _passwordController = TextEditingController(text: 'Gello');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppAppBar(
        title: 'Se connecter',
      ),
      body: Builder(
        builder: (BuildContext context) => SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  AppInput(
                    label: 'Identifiant',
                    controller: _idController,
                  ),
                  SizedBox(height: 20),
                  AppInput(
                    label: 'Mot de passe',
                    controller: _passwordController,
                    isPassword: true,
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AppLink(
                      text: 'Problèmes de connexion ?',
                    ),
                  ),
                  SizedBox(height: 20),
                  AppButton.text(
                    full: true,
                    primary: true,
                    text: 'Se connecter',
                    onPressed: () {
                      // Pop all history
                      Navigator.of(context).popUntil((route) => route.isFirst);

                      // Push new page
                      Navigator.of(context, rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => MainTabNavigator()));
                    },
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
