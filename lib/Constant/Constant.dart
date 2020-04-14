import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
String SPLASH_SCREEN = '/AnimatedSplashScreen',
// ignore: non_constant_identifier_names
    HOME_SCREEN = '/HomePage',
// ignore: non_constant_identifier_names
    LOGIN_SCREEN = '/LoginPage';

// ignore: non_constant_identifier_names
String INTRO_SCREEN = '/IntroPage';

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
