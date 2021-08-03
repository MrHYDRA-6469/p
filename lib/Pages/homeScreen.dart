import 'package:flutter/material.dart';
import 'package:myportfolio/Pages/navbar/navBar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:myportfolio/routerConstant.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: NotificationListener<ScrollNotification>(
        // ignore: non_constant_identifier_names
        onNotification: (ScrollNotification scrollNotification) {
          if (scrollNotification is ScrollEndNotification) {
            Navigator.pushNamed(context, HomeRouter);
          }
          return true;
        },
        child: Stack(children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.black, Colors.greenAccent, Colors.black],
                  )),
                  child: Navibar()),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image(
                    image: AssetImage('assests/images/background.png'),
                    fit: BoxFit.cover,
                  )),
            ],
          ),
          Positioned(
            top: 400, // IMP otherwise goes on top...

            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Keep on adding, keep on walking, keep on progressing: do not delay on the road, do not go back, do not deviate.\n - Author: Saint Augustine',
                        textAlign: TextAlign.right,
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
