// ignore: import_of_legacy_library_into_null_safe

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';

import 'package:flutter/material.dart';
import 'package:myportfolio/Pages/navbar/navBar.dart';

class Aboutme extends StatelessWidget {
  final PageController pageController;
  Aboutme(this.pageController);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHome();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHome();
        } else {
          return MobileHome();
        }
      },
    );
  }
}

class DesktopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // key: ,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.black, Colors.greenAccent, Colors.black],
            )),
            child: Navibar()),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.white, Colors.lightGreen.shade50],
          )),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              RichText(
                text: TextSpan(
                    text: 'What I Thought',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                    children: <TextSpan>[TextSpan(text: '')]),
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.white, Colors.grey],
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
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.8,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.greenAccent, Colors.pinkAccent],
                )),
            child: FlipCard(
                front: CarouselSlider(
                    items: <Widget>[
                      Image(image: AssetImage('assests/images/WEB1.png')),
                      Image(image: AssetImage('assests/images/WEB1.png')),
                      Image(image: AssetImage('assests/images/WEB1.png')),
                      Image(image: AssetImage('assests/images/WEB1.png'))
                    ],
                    options: CarouselOptions(
                        pauseAutoPlayOnTouch: true,
                        aspectRatio: 1 / 1,
                        autoPlay: true,
                        viewportFraction: 2)),
                back: Text('helloo')),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.9,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.greenAccent, Colors.green],
                )),
            child: FlipCard(
                front: CarouselSlider(
                    items: <Widget>[
                      Image(image: AssetImage('assests/images/WEB1.png')),
                      Image(image: AssetImage('assests/images/WEB1.png')),
                      Image(image: AssetImage('assests/images/WEB1.png')),
                      Image(image: AssetImage('assests/images/WEB1.png'))
                    ],
                    options: CarouselOptions(
                        pauseAutoPlayOnTouch: true,
                        aspectRatio: 1 / 1,
                        autoPlay: true,
                        viewportFraction: 2)),
                back: Text('helloo')),
          )
        ]),
      ),
    ));
  }
}
