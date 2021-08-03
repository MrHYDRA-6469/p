import 'package:flutter/material.dart';
import 'package:myportfolio/Pages/navbar/navBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../routerConstant.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.white, Colors.grey, Colors.greenAccent, Colors.black],
        )),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.black, Colors.greenAccent, Colors.black],
                )),
                child: Navibar()),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'For any officials Contact me on',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                    onPressed: () async {
                      const url =
                          "https://mail.google.com/mail/u/0/#inbox?compose=CllgCJNwfPjkMpZTtSkhmRZDsmKBWwSSScLCfwlmRBwZvxXJDlrGPkhdSlBqLnmqxPSCZMSJPVq";

                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: false,
                        );
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    ),
                    label: Text(
                      "apyadav.official@gmail.com",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can connect me through',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                    onPressed: () async {
                      const url =
                          "https://www.linkedin.com/in/arpit-yadav-91376819a/";
                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: false,
                        );
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.linkedinIn,
                      color: Colors.black,
                    ),
                    label: Text(
                      "https://www.linkedin.com/in/arpit-yadav-91376819a/",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                    onPressed: () async {
                      const url = "https://www.instagram.com/__mr_hydra/";
                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: false,
                        );
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.black,
                    ),
                    label: Text(
                      "https://www.instagram.com/__mr_hydra/",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                    onPressed: () async {
                      const url = "https://www.facebook.com/arpit.yadav.77312/";
                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: false,
                        );
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.black,
                    ),
                    label: Text(
                      "https://www.facebook.com/arpit.yadav.77312/",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                    onPressed: () async {
                      const url = "https://twitter.com/ArpitYa75772770";
                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: false,
                        );
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.black,
                    ),
                    label: Text(
                      "https://www.youtube.com/channel/UCKow5KlInk9tJ22hpU-R4mA",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                    onPressed: () async {
                      const url =
                          "https://www.youtube.com/channel/UCKow5KlInk9tJ22hpU-R4mA";
                      if (await canLaunch(url)) {
                        await launch(
                          url,
                          forceSafariVC: false,
                        );
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.black,
                    ),
                    label: Text(
                      "https://www.youtube.com/channel/UCKow5KlInk9tJ22hpU-R4mA",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 200,
              color: Colors.black87,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomeRouter);
                      },
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.green),
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, CommunityRouter);
                      },
                      child: Text("Community",
                          style: TextStyle(color: Colors.green))),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AboutmeRouter);
                      },
                      child: Text("About Me",
                          style: TextStyle(color: Colors.green))),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ContactRouter);
                    },
                    child:
                        Text("Contact", style: TextStyle(color: Colors.green)),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
