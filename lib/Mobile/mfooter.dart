import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Mfooter extends StatelessWidget {
  const Mfooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      color: Colors.black87,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
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
                    color: Colors.greenAccent,
                  ),
                  label: Text(
                    "apyadav.official@gmail.com",
                    style: TextStyle(color: Colors.greenAccent),
                  )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
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
                  color: Colors.greenAccent,
                ),
              ),
              IconButton(
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
                  color: Colors.greenAccent,
                ),
              ),
              IconButton(
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
                  color: Colors.greenAccent,
                ),
              ),
              IconButton(
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
                  color: Colors.greenAccent,
                ),
              ),
              IconButton(
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
                  color: Colors.greenAccent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
