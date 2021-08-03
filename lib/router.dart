import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/Pages/aboutMe.dart';
import 'package:myportfolio/Pages/community/community.dart';
import 'package:myportfolio/Pages/contact.dart';
import 'package:myportfolio/Pages/home.dart';
import 'package:myportfolio/Pages/homeScreen.dart';
import 'package:myportfolio/routerConstant.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AboutmeRouter:
      return CupertinoPageRoute(builder: (context) => Aboutme());
    case ContactRouter:
      return CupertinoPageRoute(builder: (context) => Contact());
    case HomeRouter:
      return CupertinoPageRoute(builder: (context) => Home());
    case CommunityRouter:
      return CupertinoPageRoute(builder: (context) => Community());
    case HomescreenRouter:
      return CupertinoPageRoute(builder: (context) => Homescreen());
    default:
      return CupertinoPageRoute(builder: (context) => Homescreen());
  }
}
