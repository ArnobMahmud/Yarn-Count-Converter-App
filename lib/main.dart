import 'package:count_conv_app/Direct/direct.dart';
import 'package:count_conv_app/Indirect/indirect.dart';
import 'package:count_conv_app/pages/conversion-choice-page.dart';
import 'package:count_conv_app/pages/home-page.dart';
import 'package:count_conv_app/pages/navigation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/nav': (context) => NavigationPage(),
        '/convpage': (context) => ConversionChoicePage(),
        '/directmethod': (context) => DirectMethod(),
        '/indirectmethod': (context) => IndirectMethod(),
      },
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      // primarySwatch: Color(0xffa58d7f),
      // ),
    );
  }
}
