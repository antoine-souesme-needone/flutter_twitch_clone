import 'package:flutter/material.dart';

class BrowsePage extends StatefulWidget {
  @override
  _BrowsePageState createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (BuildContext context) => SafeArea(
          child: Center(
            child: Text('Parcourir'),
          ),
        ),
      ),
    );
  }
}
