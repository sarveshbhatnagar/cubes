import 'package:flutter/material.dart';

class AuthHome extends StatefulWidget {
  @override
  _AuthHomeState createState() => _AuthHomeState();
}

class _AuthHomeState extends State<AuthHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // TODO make carousel static.
          Image.network('assets/images/testimage.png')
          // TODO create login  signup pane.
          // TODO create footer
        ],
      ),
    );
  }
}
