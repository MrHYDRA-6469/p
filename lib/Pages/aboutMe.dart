// ignore: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:myportfolio/Pages/navbar/navBar.dart';

class Aboutme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // key: ,
        toolbarHeight: 120,
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
