import 'package:explore_me/user_shared_preferences.dart';
import 'package:explore_me/view/mobile_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../view/home.dart';

import '../view/web_body.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSharedPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter User Profile App UI',
      theme: ThemeData(
          textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        headline2: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w300,
          color: Colors.grey,
        ),
        headline3: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Colors.grey,
        ),
      )),
      home: Home(
        mobile: const MobileBody(),
        web: const WebBody(),
      ),
    );
  }
}