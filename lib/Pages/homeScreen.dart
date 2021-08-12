import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/Mobile/mobilehomeScreen.dart';

import 'package:myportfolio/desktop/desktophomescreen.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktophomeScreen();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktophomeScreen();
        } else {
          return MobilehomeScreen();
        }
      },
    );
  }
}
