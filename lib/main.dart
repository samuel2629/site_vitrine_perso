import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:js' as js;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              createTopHeader(),
              createPortfolio(),
              createServices(),
              createAbout(),
            ],
          ),
        ),
      ),
    );
  }

  Widget createRoundedBackground(String image, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 125,
            width: 125,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 4.0),
                image: DecorationImage(
                    image: ExactAssetImage(image), fit: BoxFit.contain),
                shape: BoxShape.circle),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white, fontFamily: "Aleygra", fontSize: 22),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  Widget createTopHeader(){
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 300/100,
          child: Image.asset(
            'images/image_second.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 8.0),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Zaffran Samuel",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: "Aleygra"),
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget createPortfolio(){
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Text(
              "PORTFOLIO",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 42,
                  fontFamily: "Aleygra"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 275,
                  child:
                  Image.asset('images/apolo_screen.png'),
                ),
                Container(
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child:
                            Text('Apolo Launcher', textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0, fontFamily: "Aleygra", color: Colors.black)
                            ),
                          ),
                          Text('A stunning launcher on Android, that i took part of building with the great team of Mad Seven Corporate. Today it has more than a million of downloads', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: "Aleygra", fontSize: 18.0),
                          ),
                          Material(
                            child: GestureDetector(
                              onTap: (){
                                js.context.callMethod("open", ["https://play.google.com/store/apps/details?id=co.madseven.launcher"]);
                              },
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset('images/playstore.jpg')),
                            ),
                          )
                        ],
                      ),
                    )),
              ],),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical : 16.0),
                            child: Text('123Soleil', textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0, fontFamily: "Aleygra", color: Colors.black)
                            ),
                          ),
                          Text('An useful and elegant solution for french market to calculate the solar potential of the roof of a house and make savings', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: "Aleygra", fontSize: 18.0)
                          ),
                          Material(
                            child: GestureDetector(
                              onTap: (){
                                js.context.callMethod("open", ["https://play.google.com/store/apps/details?id=com.jmjsolution.solarpart"]);
                              },
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset('images/playstore.jpg')),
                            ),
                          )
                        ],
                      ),
                    )),
                Container(
                  width: 275,
                  child:
                  Image.asset('images/undeuxtroissoleil_screen.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64.0, bottom: 64.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  child: Column(children: <Widget>[
                    Image.asset('images/millinews_ios.png'),
                    Text('IOS', textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontFamily: "Aleygra", color: Colors.black),)
                  ],),
                ),
                Container(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text('MilliNews', textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0, fontFamily: "Aleygra", color: Colors.black)
                            ),
                          ),
                          Text('A beautiful and cross platform (Android & IOS under Flutter) news reader, soon available on the Playstore and Appstore', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: "Aleygra", fontSize: 18.0)
                          ),
                        ],
                      ),
                    )
                ),
                Container(
                  width: 275,
                  child: Column(children: <Widget>[
                    Image.asset('images/millinews_android.png'),
                    Text('Android', textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontFamily: "Aleygra", color: Colors.black),)
                  ],),
                )
              ],),
          ),
        ],
      ),
    );
  }

  Widget createServices(){
    return Container(
      color: Color.fromRGBO(96, 125, 139, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                createRoundedBackground(
                    'images/android_icon.jpg', 'Android Development'),
                createRoundedBackground(
                    'images/server_icon.jpg', 'Server Skills'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                createRoundedBackground(
                    'images/flutter_icon.png', 'Flutter Development'),
                createRoundedBackground(
                    'images/database_icon.png', 'Database Skills'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 46.0),
            child: Column(children: <Widget>[
              createRoundedBackground(
                  'images/java_icon.png', 'Java Development'),
              createRoundedBackground(
                  'images/design_icon.jpg', 'Design Skills'),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Text(
              "SERVICES",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontFamily: "Aleygra"),
            ),
          ),
        ],),
    );
  }

  Widget createAbout(){
      return Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(42.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('ABOUT ME', style: TextStyle(color: Colors.white, fontFamily: "Aleygra", fontSize: 42)),
              Container(
                width: 600,
                child: Text('Young self-learner originally from France, i now live in Tel-Aviv in the startup nation. I started learning on Treehouse where '
                    'i finally reached the top 1% over 350 000 students. Next i got a scolarship from Google and i have been graduated by Udacity (Google platform) '
                    'obtaining a nanodegree. From here while i carried on learning, i also did some freelance work; after a couple years i joined the Mad Seven team (Apolo Launcher).'
                    "Today i'm the CTO of GetOneTech where we develop solutions for the particular and professional about green energy.",
                    style: TextStyle(color: Colors.white, fontFamily: "Aleygra", fontSize: 20.0)),
              ),
            ],
          ),
        ),
      );
  }
}
