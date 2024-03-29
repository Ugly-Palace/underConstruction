import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:palace/screens/main_screen.dart';
import 'package:palace/util/const.dart';

import 'screens/landing_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: isDark ? Constants.darkPrimary : Constants.lightPrimary,
      statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Palace',
      theme: isDark ? Constants.darkTheme : Constants.lightTheme,
      home: LandingScreen(),
      routes: {
        MainScreen.routName: (context) => MainScreen(),
      },
    );
  }
}
