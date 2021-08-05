// ignore: import_of_legacy_library_into_null_safe


import 'package:flutter/material.dart';
import 'package:myportfolio/Pages/navbar/navBar.dart';




class Community extends StatelessWidget {
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

class DesktopHome extends StatefulWidget {
  @override
  _DesktopHomeState createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
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

 

  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollNotification) {
          if (scrollNotification is ScrollEndNotification) {}
          return true;
        },
        child: Scaffold(
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
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.greenAccent, Colors.green],
            )),
            child: Center(child: Text('Tech community tab in working')),
          ),
        ));
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
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.greenAccent, Colors.green],
          )),
          child: Center(child: Text('Tech community tab in working')),
        ),
      ),
    ));
  }
}
