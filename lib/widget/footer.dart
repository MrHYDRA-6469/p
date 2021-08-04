import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myportfolio/Pages/aboutMe.dart';
import 'package:myportfolio/provider/inherited_data_provider.dart';

import '../routerConstant.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>
    with SingleTickerProviderStateMixin {
  PageController pageBottomBarController = PageController();
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  bool isScrollingDown = false;
  bool isOnTop = true;

  @override
  void initState() {
    myScroll();
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ))
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
    _controller.forward();
  }

  void showBottomBar() {
    if (mounted) {
      setState(() {
        _controller.forward();
      });
    }
  }

  void hideBottomBar() {
    if (mounted) {
      setState(() {
        _controller.reverse();
      });
    }
  }

  Future<void> myScroll() async {
    pageBottomBarController.addListener(() {
      if (pageBottomBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          isOnTop = false;
          hideBottomBar();
        }
      }
      if (pageBottomBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          isOnTop = true;
          showBottomBar();
        }
      }
    });
  }

  @override
  void dispose() {
    pageBottomBarController.removeListener(() {});
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(width: 40, height: 40, child: Text('hello')),
        InheritedDataProvider(
          pageController: pageBottomBarController,
          child: SizedBox(
              height: 100, width: 100, child: Aboutme(pageBottomBarController)),
        ),

        // Container(
        //         height: 200,
        //         color: Colors.black87,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: <Widget>[
        //             TextButton(
        //                 onPressed: () {
        //                   Navigator.pushNamed(context, HomeRouter);
        //                 },
        //                 child: Text(
        //                   "Home",
        //                   style: TextStyle(color: Colors.green),
        //                 )),
        //             SizedBox(
        //               width: 30,
        //             ),
        //             TextButton(
        //                 onPressed: () {
        //                   Navigator.pushNamed(context, CommunityRouter);
        //                 },
        //                 child: Text("Community",
        //                     style: TextStyle(color: Colors.green))),
        //             SizedBox(
        //               width: 30,
        //             ),
        //             TextButton(
        //                 onPressed: () {
        //                   Navigator.pushNamed(context, AboutmeRouter);
        //                 },
        //                 child: Text("About Me",
        //                     style: TextStyle(color: Colors.green))),
        //             SizedBox(
        //               width: 30,
        //             ),
        //             TextButton(
        //               onPressed: () {
        //                 Navigator.pushNamed(context, ContactRouter);
        //               },
        //               child: Text("Contact",
        //                   style: TextStyle(color: Colors.green)),
        //             ),
        //           ],
        //         ),
        //       )
      ],
    );
  }
}
