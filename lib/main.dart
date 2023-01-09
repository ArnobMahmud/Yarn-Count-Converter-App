import 'package:count_conv_app/Direct/direct-indirect.dart';
import 'package:count_conv_app/info/info-page.dart';
import 'package:count_conv_app/pages/conversion-choice-page.dart';
import 'package:count_conv_app/pages/home-page.dart';
import 'package:flutter/material.dart';
import 'Direct/direct-direct.dart';
import 'Indirect/indirect-direct.dart';
import 'Indirect/indirect-indirect.dart';
import 'brain/direct-indirect/Den/DenToNeConvPage.dart';
import 'brain/direct-indirect/Den/DenToNeLConvPage.dart';
import 'brain/direct-indirect/Den/DenToNeSConvPage.dart';
import 'brain/direct-indirect/Den/DenToNeWConvPage.dart';
import 'brain/direct-indirect/Den/DenToNmConvPage.dart';
import 'brain/direct-indirect/Tex/TexToNeConvPage.dart';
import 'brain/direct-indirect/Tex/TexToNeLConvPage.dart';
import 'brain/direct-indirect/Tex/TexToNeSConvPage.dart';
import 'brain/direct-indirect/Tex/TexToNeWConvPage.dart';
import 'brain/direct-indirect/Tex/TexToNmConvPage.dart';
import 'brain/direct-indirect/lbs-spy/LbsSpyToNeConvPage.dart';
import 'brain/direct-indirect/lbs-spy/LbsSpyToNeLConvPage.dart';
import 'brain/direct-indirect/lbs-spy/LbsSpyToNeSConvPage.dart';
import 'brain/direct-indirect/lbs-spy/LbsSpyToNeWConvPage.dart';
import 'brain/direct-indirect/lbs-spy/LbsSpyToNmConvPage.dart';
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
import 'brain/indirect-indirect/Ne/NeToNeLConvPage.dart';
import 'brain/indirect-indirect/Ne/NeToNeSConvPage.dart';
import 'brain/indirect-indirect/Ne/NeToNeWConvPage.dart';
import 'brain/indirect-indirect/Ne/NeToNmConvPage.dart';
import 'brain/indirect-indirect/NeL/NeLToNeConvPage.dart';
import 'brain/indirect-indirect/NeL/NeLToNeSConvPage.dart';
import 'brain/indirect-indirect/NeL/NeLToNeWConvPage.dart';
import 'brain/indirect-indirect/NeL/NeLToNmConvPage.dart';
import 'brain/indirect-indirect/NeS/NeSToNeConvPage.dart';
import 'brain/indirect-indirect/NeS/NeSToNeLConvPage.dart';
import 'brain/indirect-indirect/NeS/NeSToNeWConvPage.dart';
import 'brain/indirect-indirect/NeS/NeSToNmConvPage.dart';

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
        '/infopage': (context) => InfoPage(),
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
        '/textone': (context) => TexToNeConvPage(),
        '/textonm': (context) => TexToNmConvPage(),
        '/textones': (context) => TexToNeSConvPage(),
        '/textonew': (context) => TexToNeWConvPage(),
        '/textonel': (context) => TexToNeLConvPage(),
        '/dentone': (context) => DenToNeConvPage(),
        '/dentonm': (context) => DenToNmConvPage(),
        '/dentones': (context) => DenToNeSConvPage(),
        '/dentonew': (context) => DenToNeWConvPage(),
        '/dentonel': (context) => DenToNeLConvPage(),
        '/lbsspytone': (context) => LbsSpyToNeConvPage(),
        '/lbsspytonew': (context) => LbsSpyToNeWConvPage(),
        '/lbsspytones': (context) => LbsSpyToNeSConvPage(),
        '/lbsspytonel': (context) => LbsSpyToNeLConvPage(),
        '/lbsspytonm': (context) => LbsSpyToNmConvPage(),
        '/netonm': (context) => NeToNmConvPage(),
        '/netonew': (context) => NeToNeWConvPage(),
        '/netones': (context) => NeToNeSConvPage(),
        '/netonel': (context) => NeToNeLConvPage(),
        '/neltone': (context) => NeLToNeConvPage(),
        '/neltonm': (context) => NeLToNmConvPage(),
        '/neltones': (context) => NeLToNeSConvPage(),
        '/neltonew': (context) => NeLToNeWConvPage(),
        '/nestone': (context) => NeSToNeConvPage(),
        '/nestonel': (context) => NeSToNeLConvPage(),
        '/nestonew': (context) => NeSToNeWConvPage(),
        '/nestonm': (context) => NeSToNmConvPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
