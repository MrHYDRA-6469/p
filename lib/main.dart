import 'package:flutter/material.dart';
import 'package:myportfolio/Pages/homeScreen.dart';
import 'package:myportfolio/router.dart' as rt;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Arpit Yadav',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
        home: Homescreen(),
        // initialRoute: ,
        onGenerateRoute: rt.generateRoute);
  }
}
