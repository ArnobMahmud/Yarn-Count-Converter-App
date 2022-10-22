import 'package:count_conv_app/Direct/direct-direct.dart';
import 'package:count_conv_app/Direct/direct-indirect.dart';
import 'package:count_conv_app/Indirect/indirect-direct.dart';
import 'package:count_conv_app/Indirect/indirect-indirect.dart';
import 'package:count_conv_app/pages/conversion-choice-page.dart';
import 'package:count_conv_app/pages/home-page.dart';
import 'package:flutter/material.dart';

import 'brain/NeToTexConvPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/convpage': (context) => ConversionChoicePage(),
        '/directindirectmethod': (context) => DirectIndirectMethod(),
        '/indirectdirectmethod': (context) => IndirectDirectMethod(),
        '/indirectindirectmethod': (context) => IndirectIndirectMethod(),
        '/directdirectmethod': (context) => DirectDirectMethod(),
        '/netotex': (context) => NeToTexConvPage(),
      },
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
    );
  }
}
