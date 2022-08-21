import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  introViewSample(),
    );
  }
}




class introViewSample extends StatelessWidget {
  // PageViewModel型のリストを作成
  static final pages = [
    PageViewModel(
      pageColor: const Color(0xFFFF7A00),
      iconImageAssetPath: 'images/Daco_4792678.png',
      body: Text(
          'In a flurry of slashes, Juggernaut cuts down his foes. Sprinting and spinning into battle with reckless abandon, and nearly invincible once he is able to begin his assault, stopping Juggernaut can often be just as difficult as surviving him.'),
      title: Text('Juggernaut'),
      mainImage: Image.asset(
        'images/Daco_4792678.png',
        height: 400.0,
        width: 400.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(color: Colors.white),
      bodyTextStyle: TextStyle(color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xD2FF0000),
      iconImageAssetPath: 'images/Daco_194866.png',
      body: Text(
        'One after another, Axe cuts down his foes.',
      ),
      title: Text('Axe'),
      mainImage: Image.asset(
        'images/Daco_194866.png',
        height: 320.0,
        width: 320.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF7A008B),
      iconImageAssetPath: 'images/Daco_4505724.png',
      body: Text(
        'He speeds time to dash between locations, manipulates it to dodge attacks, stops it in a large area to devastate his foes, and given enough of it to gather resources, he can make himself unbelievably powerful.',
      ),
      title: Text('Faceless Void'),
      mainImage: Image.asset(
        'images/Daco_4505724.png',
        height: 400.0,
        width: 400.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xBC0044FF),
      iconImageAssetPath: 'images/Daco_5480788.png',
      body: Text(
        'Disruptor excels at shattering the plans of his enemies. Summoning impassable fences to trap targets as he calls down a silencing storm, should a foe attempt something unexpected he simply teleports them back to their earlier location.',
      ),
      title: Text('Disruptor'),
      mainImage: Image.asset(
        'images/Daco_5480788.png',
        height: 400.0,
        width: 400.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),

  ];

  Widget build(BuildContext context) {
    return IntroViewsFlutter(pages); // PageViewModelのリストを渡す
  }
}
