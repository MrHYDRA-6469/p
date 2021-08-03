// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/Pages/navbar/navBar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../routerConstant.dart';

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

  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
    ..onTap = () async {
      final url = 'https://arpitytech.wordpress.com/';
      if (await canLaunch(url)) {
        await launch(
          url,
        );
      }
    };

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
          // title: TextButton(onPressed: null, child: Text('Arpit Yadav')),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.greenAccent, Colors.green],
          )),
          child: PageView(
            scrollDirection: Axis.vertical,
            controller: controller,
            children: [
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
                                        image: AssetImage(
                                            'assests/images/WEB1.png'))
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
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.3,
                                      child: SingleChildScrollView(
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'I am Currenlty blogging at',
                                            style: TextStyle(
                                              height: 1.5,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: " arpitytech.com",
                                                  style: TextStyle(
                                                      color: Colors.blueAccent),
                                                  recognizer:
                                                      _gestureRecognizer),
                                              TextSpan(
                                                  text:
                                                      ' and learning the SEO techniques to rank my blogs with the help of of the following tools\n'),
                                              TextSpan(
                                                  text:
                                                      '- GOOGLE ANALYTICS    - GOOGLE TAG MANAGER    - SEO QUAKE\n- SCREAMING FROG        - MOZBAR                               - SEMRUSH\n- SQUARESPACE\n',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                  text:
                                                      'I have accomplished the FUNDAMENTALS OF Digital Marketing offerred by Google.\n',
                                                  style:
                                                      TextStyle(height: 1.5)),
                                              TextSpan(
                                                  text: 'GUIDED PROJECTS\n',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      height: 3)),
                                              TextSpan(
                                                  text:
                                                      "● Google Ads for Beginners\n ● Create a Business Marketing Brand Kit Using Canva\n ● Use Mailchimp to Build an E-mail Marketing Campaign\n ● Create an Email Autoresponder Using Mailchimp\n ● Search Engine Optimization (SEO) with Squarespace\n ● Optimizing Your Website's Keywords & Pages using Ubersuggest\n ● Create a 1-Page Marketing Plan with Google Docs\n ● Create a Business Marketing Brand Kit Using Canva\n")
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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
                                        image: AssetImage(
                                            'assests/images/WEB1.png'))
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
                                        image: AssetImage(
                                            'assests/images/WEB1.png'))
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
                        mainAxisAlignment: MainAxisAlignment.end,
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
                                        image: AssetImage(
                                            'assests/images/WEB1.png'))
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
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 600,
                    width: 1200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 50,
                      shadowColor: Colors.greenAccent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                        image: AssetImage(
                                            'assests/images/WEB1.png'))
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
                                      'School',
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,r ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          decorationColor: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                      child: Text("Contact",
                          style: TextStyle(color: Colors.green)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.black, Colors.greenAccent, Colors.black],
            )),
            child: Navibar()),
      ),
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
