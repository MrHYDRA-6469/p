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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, ScaleRoute(page: Home()));
        },
        backgroundColor: Colors.transparent,
        child: Icon(Icons.home),
        hoverElevation: 100,
        hoverColor: Colors.greenAccent,
        
      ),
      body: ParallaxStack(
        layers: [
          ParallaxLayer(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Container(
                  color: Colors.black,
                )),
          ),
          ParallaxLayer(
            yRotation: 0.35,
            xOffset: 10,
            child: Container(
              // width: MediaQuery.of(context).size.width * 1.5,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assests/images/background.png',
                filterQuality: FilterQuality.low,
                fit: BoxFit.cover,
              ),
            ),
          ),
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
                    child: Text(
                      'Keep on adding, keep on walking, keep on progressing: do not delay on the road, do not go back, do not deviate.\n - Author: Saint Augustine',
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
