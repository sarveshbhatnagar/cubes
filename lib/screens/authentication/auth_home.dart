import 'package:cubes/widgets/common/popular_slider.dart';
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
          SizedBox(
            height: 40,
          ),
          // TODO make carousel static.
          PopularSlider(),
          // TODO create login  signup pane.
          // TODO create footer
        ],
      ),
    );
  }
}
