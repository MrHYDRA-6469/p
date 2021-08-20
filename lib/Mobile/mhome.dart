import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myportfolio/Mobile/mfooter.dart';
import 'package:myportfolio/Pages/navbar/navBar.dart';
import 'package:myportfolio/routerConstant.dart';
import 'package:url_launcher/url_launcher.dart';

class Mhome extends StatefulWidget {
  Mhome({Key? key}) : super(key: key);

  @override
  _MhomeState createState() => _MhomeState();
}

class _MhomeState extends State<Mhome> {
  var scrollcontroller = ScrollController();

  var isVisible = true;

  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
    ..onTap = () async {
      final url = 'https://arpitytech.wordpress.com/';
      if (await canLaunch(url)) {
        await launch(
          url,
        );
      }
    };

  @override
  void initState() {
    super.initState();
    scrollcontroller.addListener(() {
      if (scrollcontroller.position.atEdge) {
        if (scrollcontroller.position.pixels > 0) {
          if (isVisible) {
            setState(() {
              isVisible = false;
            });
          }
        }
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Visibility(
        visible: isVisible,
        child: FloatingActionButton(
            backgroundColor: Colors.greenAccent,
            mini: true,
            focusElevation: 0,
            foregroundColor: Colors.greenAccent,
            hoverElevation: 100,
            hoverColor: Colors.greenAccent,
            child: Icon(
              Icons.arrow_upward,
              color: Colors.white,
            ),
            onPressed: () {
              // setState(() {

              // });
              Navigator.pushNamed(context, HomeRouter);
            }),
      ),
      // floatingActionButtonLocation: ,
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.black, Colors.greenAccent, Colors.black],
                )),
                child: Navibar()),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.7,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.greenAccent, Colors.lightGreenAccent],
                  )),
              child: Container(
                // height: 600,
                width: 1700,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 50,
                  shadowColor: Colors.greenAccent,
                  child: SingleChildScrollView(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              // alignment: Alignment.centerLeft,
                              child: Text(
                                'Digital Marketing',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                                alignment: Alignment.topLeft,
                                width: MediaQuery.of(context).size.width * 0.8,
                                // height:
                                //     MediaQuery.of(context).size.width * 0.8,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'I am Currenlty blogging at',
                                    style: TextStyle(
                                        height: 1.5, color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: " arpitytech.com",
                                          style: TextStyle(
                                              color: Colors.blueAccent),
                                          recognizer: _gestureRecognizer),
                                      TextSpan(
                                          text:
                                              ' and learning the SEO techniques to rank my blogs with the help of of the following tools\n',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      TextSpan(
                                          text:
                                              '- GOOGLE ANALYTICS\n- GOOGLE TAG MANAGER\n- SEO QUAKE\n- SCREAMING FROG\n- MOZBAR\n- SEMRUSH\n- SQUARESPACE\n',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      TextSpan(
                                          text:
                                              'I have accomplished the FUNDAMENTALS OF Digital Marketing offerred by Google.\n',
                                          style: TextStyle(
                                              height: 1.5,
                                              color: Colors.black)),
                                      TextSpan(
                                          text: 'GUIDED PROJECTS\n',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              height: 3,
                                              color: Colors.black)),
                                      TextSpan(
                                          text:
                                              "● Google Ads for Beginners\n ● Create a Business Marketing Brand Kit Using Canva\n ● Use Mailchimp to Build an E-mail Marketing Campaign\n ● Create an Email Autoresponder Using Mailchimp\n ● Search Engine Optimization (SEO) with Squarespace\n ● Optimizing Your Website's Keywords & Pages using Ubersuggest\n ● Create a 1-Page Marketing Plan with Google Docs\n ● Create a Business Marketing Brand Kit Using Canva\n",
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.7,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.greenAccent, Colors.lightGreenAccent],
                  )),
              child: Container(
                // height: 600,
                width: 1700,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 50,
                  shadowColor: Colors.greenAccent,
                  child: SingleChildScrollView(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              // alignment: Alignment.centerLeft,
                              child: Text(
                                'Flutter Development',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                                alignment: Alignment.topLeft,
                                width: MediaQuery.of(context).size.width * 0.8,
                                // height:
                                //     MediaQuery.of(context).size.width * 0.8,
                                child: RichText(
                                  text: TextSpan(
                                    text:
                                        '● Successfully hosted my portfolio on Digital ocean',
                                    style: TextStyle(
                                        height: 1.5, color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "-https://arpityadav.live/ \n",
                                          style: TextStyle(
                                              color: Colors.blueAccent),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () async {
                                              final url =
                                                  'https://arpityadav.live/';
                                              if (await canLaunch(url)) {
                                                await launch(
                                                  url,
                                                );
                                              }
                                            }),
                                      TextSpan(
                                          text:
                                              ' ● Contributed to developing UI of an eco commerce app and Prism wallpaper\n',
                                          style: TextStyle(
                                              height: 1.5,
                                              color: Colors.black)),
                                      TextSpan(
                                          text:
                                              "Prism is a beautiful open-source wallpapers app for Android. It is built with Dart on top of Google's Flutter Framework.\n Eco Commerce is a beautiful app build with Google's Flutter Framework. It aims to build a useful, and functional platform helping people to sell stuff.\n",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      TextSpan(
                                          text:
                                              "● Ariel News app using news.API\n",
                                          style: TextStyle(
                                              height: 1.5,
                                              color: Colors.black)),
                                      TextSpan(
                                          text:
                                              "News App developed with Flutter featuring beautiful UI, category-based news, story for faster news reading, inbuilt article viewer, share feature, and more..\n",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      TextSpan(
                                          text: "● E-learning App\n",
                                          style: TextStyle(
                                              height: 1.5,
                                              color: Colors.black)),
                                      TextSpan(
                                          text:
                                              "E-Learn is a beautiful open-source education app for Android. It is built with Dart on top of Google's Flutter Framework.\n",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                      TextSpan(
                                          text: 'SKILLS\n',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              height: 3,
                                              color: Colors.black)),
                                      TextSpan(
                                          text:
                                              '● Programming Languages: C++, Python, DART\n ● Frameworks: Flutter Arduino\n ● Software Essentials: Git, VSCode\n ● Designing: Adobe Photoshop, Adobe Premiere, Adobe After Effects\n ● Other: Microsoft Office, GitHub\n ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              height: 1.5,
                                              color: Colors.black)),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.7,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.greenAccent, Colors.lightGreenAccent],
                  )),
              child: Container(
                // height: 600,
                width: 1700,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 50,
                  shadowColor: Colors.greenAccent,
                  child: SingleChildScrollView(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              // alignment: Alignment.centerLeft,
                              child: Text(
                                'College and School',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                                alignment: Alignment.topLeft,
                                width: MediaQuery.of(context).size.width * 0.8,
                                // height:
                                //     MediaQuery.of(context).size.width * 0.8,
                                child: RichText(
                                  text: TextSpan(
                                    text:
                                        '-Netaji Subhas University of Technology \n',
                                    style: TextStyle(color: Colors.blueAccent),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        final url = 'https://arpityadav.live/';
                                        if (await canLaunch(url)) {
                                          await launch(
                                            url,
                                          );
                                        }
                                      },
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '-Bachelor of Engineering in Electronics and communication(2018-2022). \n \n',
                                          style: TextStyle(
                                              height: 1.5,
                                              color: Colors.black)),
                                      TextSpan(
                                          text:
                                              '-Delhi United Christian Senior Secondary School. \n',
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () async {
                                              final url =
                                                  'https://arpityadav.live/';
                                              if (await canLaunch(url)) {
                                                await launch(
                                                  url,
                                                );
                                              }
                                            },
                                          style: TextStyle(
                                            height: 1.5,
                                          )),
                                      TextSpan(
                                          text:
                                              "Class XII (2016-2017), \nCBSE Board: PCM \n Score : 84%\n",
                                          style: TextStyle(
                                              height: 1.5,
                                              color: Colors.black)),
                                      TextSpan(
                                          text:
                                              "Class X (2014-2015), \nCBSE Board\n CPGA :8.20 \n",
                                          style: TextStyle(
                                              height: 1.5,
                                              color: Colors.black)),
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Mfooter()
          ]),
        ),
      ),
    );
  }
}
