import 'package:count_conv_app/Direct/direct-direct.dart';
import 'package:count_conv_app/Direct/direct-indirect.dart';
import 'package:count_conv_app/Indirect/indirect-direct.dart';
import 'package:count_conv_app/Indirect/indirect-indirect.dart';
import 'package:count_conv_app/pages/conversion-choice-page.dart';
import 'package:count_conv_app/pages/home-page.dart';
import 'package:flutter/material.dart';

import 'brain/indirect-direct/Ne/NeToDenConvPage.dart';
import 'brain/indirect-direct/Ne/NeToLbsSpyConvPage.dart';
import 'brain/indirect-direct/Ne/NeToTexConvPage.dart';
import 'brain/indirect-direct/NeL/NeLToDenConvPage.dart';
import 'brain/indirect-direct/NeL/NeLToLbsSpyConvPage.dart';
import 'brain/indirect-direct/NeL/NeLToTexConvPage.dart';
import 'brain/indirect-direct/NeS/NeSToDenConvPage.dart';
import 'brain/indirect-direct/NeS/NeSToLbsSpyConvPage.dart';
import 'brain/indirect-direct/NeS/NeSToTexConvPage.dart';
import 'brain/indirect-direct/NeW/NeWToDenConvPage.dart';
import 'brain/indirect-direct/NeW/NeWToLbsSpyConvPage.dart';
import 'brain/indirect-direct/NeW/NeWToTexConvPage.dart';
import 'brain/indirect-direct/Nm/NmToDenConvPage.dart';
import 'brain/indirect-direct/Nm/NmToLbsSpyConvPage.dart';
import 'brain/indirect-direct/Nm/NmToTexConvPage.dart';

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
        '/netoden': (context) => NeToDenConvPage(),
        '/netolbsspy': (context) => NeToLbsSpyConvPage(),
        '/nmtotex': (context) => NmToTexConvPage(),
        '/nmtoden': (context) => NmToDenConvPage(),
        '/nmtolbsspy': (context) => NmToLbsSpyConvPage(),
        '/newtotex': (context) => NeWToTexConvPage(),
        '/newtoden': (context) => NeWToDenConvPage(),
        '/newtolbsspy': (context) => NeWToLbsSpyConvPage(),
        '/nestotex': (context) => NeSToTexConvPage(),
        '/nestoden': (context) => NeSToDenConvPage(),
        '/nestolbsspy': (context) => NeSToLbsSpyConvPage(),
        '/neltotex': (context) => NeLToTexConvPage(),
        '/neltoden': (context) => NeLToDenConvPage(),
        '/neltolbsspy': (context) => NeLToLbsSpyConvPage(),
      },
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
    );
  }
}
