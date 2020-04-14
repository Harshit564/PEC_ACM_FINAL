import 'package:flutter/material.dart';
import 'package:acmcsslast/ui/pages/HomePage.dart';
import 'package:acmcsslast/ui/pages/IntroPage.dart';
import 'package:acmcsslast/ui/pages/LoginPage.dart';
import 'package:acmcsslast/ui/pages/SplashScreen.dart';
import 'Constant/Constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ACM CSS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: AnimatedSplashScreen(),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => AnimatedSplashScreen(),
        HOME_SCREEN: (BuildContext context) => HomePage(),
        LOGIN_SCREEN: (BuildContext context) => LoginPage(),
        INTRO_SCREEN: (BuildContext context) => IntroPage(),
      },
    );
  }
}