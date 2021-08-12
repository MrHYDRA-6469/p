import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myportfolio/Pages/aboutMe.dart';
import 'package:myportfolio/Pages/community/community.dart';
import 'package:myportfolio/Pages/contact.dart';
import 'package:myportfolio/Pages/home.dart';
import 'package:myportfolio/Pages/homeScreen.dart';
import 'package:myportfolio/router%20animation/scaleRoute.dart';

import 'package:myportfolio/routerConstant.dart';

class Navibar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(context, ScaleRoute(page: Homescreen()));
              },
              child: Text(
                "Arpit Yadav",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, ScaleRoute(page: Home()));
                      },
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, ScaleRoute(page: Community()));
                      },
                      child: Text("Community",
                          style: TextStyle(color: Colors.white))),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, ScaleRoute(page: Aboutme()));
                      },
                      child: Text("About Me",
                          style: TextStyle(color: Colors.white))),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, ScaleRoute(page: Contact()));
                    },
                    child:
                        Text("Contact", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, HomescreenRouter);
            },
            child: Text(
              "Arpit Yadav",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ActionChip(
                    autofocus: true,
                    side: BorderSide(color: Colors.greenAccent),
                    backgroundColor: Colors.white,
                    label: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {
                      Navigator.push(context, ScaleRoute(page: Home()));
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ActionChip(
                    autofocus: true,
                    side: BorderSide(color: Colors.greenAccent),
                    backgroundColor: Colors.white,
                    label: Text("Community",
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.w400)),
                    onPressed: () {
                      Navigator.pushNamed(context, CommunityRouter);
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ActionChip(
                      autofocus: true,
                      side: BorderSide(color: Colors.greenAccent),
                      backgroundColor: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, AboutmeRouter);
                      },
                      label: Text("About Me",
                          style: TextStyle(
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.w400))),
                  SizedBox(
                    width: 15,
                  ),
                  ActionChip(
                    autofocus: true,
                    side: BorderSide(color: Colors.greenAccent),
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, ContactRouter);
                    },
                    label: Text("Contact",
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
