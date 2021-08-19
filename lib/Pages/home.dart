// ignore: import_of_legacy_library_into_null_safe


import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myportfolio/Mobile/mhome.dart';
import 'package:url_launcher/url_launcher.dart';

import '../routerConstant.dart';
import 'navbar/navBar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHome();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHome();
        } else {
          return Mhome();
        }
      },
    );
  }
}

class DesktopHome extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.greenAccent, Colors.green],
        )),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.black, Colors.greenAccent, Colors.black],
                )),
                child: Navibar()),
            CarouselSlider(
                items: <Widget>[
                  Image(image: AssetImage('assests/images/WEB1.png')),
                  Image(image: AssetImage('assests/images/WEB1.png')),
                  Image(image: AssetImage('assests/images/WEB1.png')),
                  Image(image: AssetImage('assests/images/WEB1.png'))
                ],
                options: CarouselOptions(
                    pauseAutoPlayOnTouch: true,
                    autoPlay: true,
                    viewportFraction: 1)),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 600,
                  width: 1200,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 50,
                    shadowColor: Colors.greenAccent,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: CarouselSlider(
                                items: <Widget>[
                                  Image(
                                      image: AssetImage(
                                          'assests/images/WEB1.png')),
                                  Image(
                                      image: AssetImage(
                                          'assests/images/WEB1.png')),
                                  Image(
                                      image: AssetImage(
                                          'assests/images/WEB1.png')),
                                  Image(
                                      image:
                                          AssetImage('assests/images/WEB1.png'))
                                ],
                                options: CarouselOptions(
                                    aspectRatio: 4 / 4,
                                    pauseAutoPlayOnTouch: true,
                                    autoPlay: true,
                                    viewportFraction: 2)),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Digital Marketing',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'I am Currenlty blogging at',
                                          style: TextStyle(
                                            color: Colors.black,
                                            height: 1.5,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: " arpitytech.com",
                                                style: TextStyle(
                                                    color: Colors.blueAccent),
                                                recognizer: _gestureRecognizer),
                                            TextSpan(
                                                text:
                                                    ' and learning the SEO techniques to rank my blogs with the help of of the following tools\n'),
                                            TextSpan(
                                                text:
                                                    '- GOOGLE ANALYTICS    - GOOGLE TAG MANAGER    - SEO QUAKE\n- SCREAMING FROG        - MOZBAR                               - SEMRUSH\n- SQUARESPACE\n',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text:
                                                    'I have accomplished the FUNDAMENTALS OF Digital Marketing offerred by Google.\n',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    height: 1.5)),
                                            TextSpan(
                                                text: 'GUIDED PROJECTS\n',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    height: 3)),
                                            TextSpan(
                                                text:
                                                    "● Google Ads for Beginners\n ● Create a Business Marketing Brand Kit Using Canva\n ● Use Mailchimp to Build an E-mail Marketing Campaign\n ● Create an Email Autoresponder Using Mailchimp\n ● Search Engine Optimization (SEO) with Squarespace\n ● Optimizing Your Website's Keywords & Pages using Ubersuggest\n ● Create a 1-Page Marketing Plan with Google Docs\n ● Create a Business Marketing Brand Kit Using Canva\n",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ))
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 600,
                  width: 1200,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 50,
                    shadowColor: Colors.greenAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Flutter Development',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              '● Successfully hosted my portfolio on Digital ocean',
                                          style: TextStyle(
                                            color: Colors.black,
                                            height: 1.5,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    "-https://arpityadav.live/ \n",
                                                style: TextStyle(
                                                    color: Colors.blueAccent),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () async {
                                                        final url =
                                                            'https://arpityadav.live/';
                                                        if (await canLaunch(
                                                            url)) {
                                                          await launch(
                                                            url,
                                                          );
                                                        }
                                                      }),
                                            TextSpan(
                                                text:
                                                    ' ● Contributed to developing UI of an eco commerce app and Prism wallpaper\n',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                )),
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
                                                  color: Colors.black,
                                                )),
                                            TextSpan(
                                                text:
                                                    "News App developed with Flutter featuring beautiful UI, category-based news, story for faster news reading, inbuilt article viewer, share feature, and more..\n",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12)),
                                            TextSpan(
                                                text: "● E-learning App\n",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                )),
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
                                                    height: 3)),
                                            TextSpan(
                                                text:
                                                    '● Programming Languages: C++, Python, DART\n ● Frameworks: Flutter Arduino\n ● Software Essentials: Git, VSCode\n ● Designing: Adobe Photoshop, Adobe Premiere, Adobe After Effects\n ● Other: Microsoft Office, GitHub\n ',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w300)),
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: CarouselSlider(
                                items: <Widget>[
                                  Image(
                                      image: AssetImage(
                                          'assests/images/web2.jpg')),
                                  Image(
                                      image: AssetImage(
                                          'assests/images/WEB1.png')),
                                  Image(
                                      image: AssetImage(
                                          'assests/images/WEB1.png')),
                                  Image(
                                      image:
                                          AssetImage('assests/images/WEB1.png'))
                                ],
                                options: CarouselOptions(
                                    aspectRatio: 4 / 4,
                                    pauseAutoPlayOnTouch: true,
                                    autoPlay: true,
                                    viewportFraction: 2)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 600,
                  width: 1200,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 50,
                    shadowColor: Colors.greenAccent,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: CarouselSlider(
                                items: <Widget>[
                                  Image(
                                      image: AssetImage(
                                          'assests/images/WEB1.png')),
                                  Image(
                                      image: AssetImage(
                                          'assests/images/WEB1.png')),
                                  Image(
                                      image: AssetImage(
                                          'assests/images/WEB1.png')),
                                  Image(
                                      image:
                                          AssetImage('assests/images/WEB1.png'))
                                ],
                                options: CarouselOptions(
                                    aspectRatio: 4 / 4,
                                    pauseAutoPlayOnTouch: true,
                                    autoPlay: true,
                                    viewportFraction: 2)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
          ],
        )),
      ),
    );
  }
}

