import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'package:myportfolio/Pages/home.dart';

import 'package:myportfolio/router%20animation/scaleRoute.dart';

class MobilehomeScreen extends StatefulWidget {
  const MobilehomeScreen({Key? key}) : super(key: key);

  @override
  _MobilehomeScreenState createState() => _MobilehomeScreenState();
}

class _MobilehomeScreenState extends State<MobilehomeScreen> {
  double zoom = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    String asset;

    return Scaffold(
      body: ParallaxStack(
        layers: [
          ParallaxLayer(
              yRotation: 0.35, xOffset: 60, child: ParallaxWidget(top: 0)),
          ParallaxLayer(
            yRotation: 0.35,
            xOffset: 50,
            xRotation: .5,
            yOffset: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.white,
                    )),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Keep on adding, keep on walking, keep on progressing: do not delay on the road, do not go back, do not deviate.\n - Author: Saint Augustine',
                          textAlign: TextAlign.start,
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
                TextButton(
                    onPressed: () {
                      Navigator.push(context, ScaleRoute(page: Home()));
                    },
                    child: Text(
                      "Know More",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    required this.top,
  });

  final double top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      // left: -45,
      top: top,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assests/images/background.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
