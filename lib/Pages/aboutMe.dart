import 'package:flutter/material.dart';
import 'package:myportfolio/Pages/navbar/navBar.dart';

class Aboutme extends StatelessWidget {
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
          ],
        )),
      ),
    );
  }
}
