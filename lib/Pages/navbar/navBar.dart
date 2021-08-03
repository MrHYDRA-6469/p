import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            Row(
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeRouter);
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
                      Navigator.pushNamed(context, CommunityRouter);
                    },
                    child: Text("Community",
                        style: TextStyle(color: Colors.white))),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AboutmeRouter);
                    },
                    child: Text("About Me",
                        style: TextStyle(color: Colors.white))),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ContactRouter);
                  },
                  child: Text("Contact", style: TextStyle(color: Colors.white)),
                ),
              ],
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
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeRouter);
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
                      Navigator.pushNamed(context, CommunityRouter);
                    },
                    child: Text("Community",
                        style: TextStyle(color: Colors.white))),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AboutmeRouter);
                    },
                    child: Text("About Me",
                        style: TextStyle(color: Colors.white))),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ContactRouter);
                  },
                  child: Text("Contact", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
