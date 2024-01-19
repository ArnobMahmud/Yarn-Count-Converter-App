import 'package:flutter/material.dart';
import 'package:yarn_count_converter/info/developer_page.dart';
import 'Direct/direct_direct.dart';
import 'Direct/direct_indirect.dart';
import 'Indirect/indirect_direct.dart';
import 'Indirect/indirect_indirect.dart';
import 'brain/direct-direct/Den/den_to_lbs_spy_conv_page.dart';
import 'brain/direct-direct/Den/den_to_tex_conv_page.dart';
import 'brain/direct-direct/Tex/tex_to_den_conv_page.dart';
import 'brain/direct-direct/Tex/tex_to_lbs_spy_conv_page.dart';
import 'brain/direct-direct/lbs-spy/lbs_spy_to_den_conv_page.dart';
import 'brain/direct-direct/lbs-spy/lbs_spy_to_tex_conv_page.dart';
import 'brain/direct-indirect/Den/den_to_ne_conv_page.dart';
import 'brain/direct-indirect/Den/den_to_nel_conv_page.dart';
import 'brain/direct-indirect/Den/den_to_nes_conv_page.dart';
import 'brain/direct-indirect/Den/den_to_new_conv_page.dart';
import 'brain/direct-indirect/Den/den_to_nm_conv_page.dart';
import 'brain/direct-indirect/Tex/tex_to_ne_conv_page.dart';
import 'brain/direct-indirect/Tex/tex_to_nel_conv_page.dart';
import 'brain/direct-indirect/Tex/tex_to_nes_conv_page.dart';
import 'brain/direct-indirect/Tex/tex_to_new_conv_page.dart';
import 'brain/direct-indirect/Tex/tex_to_nm_conv_page.dart';
import 'brain/direct-indirect/lbs-spy/lbs_spy_to_ne_conv_page.dart';
import 'brain/direct-indirect/lbs-spy/lbs_spy_to_nel_conv_page.dart.dart';
import 'brain/direct-indirect/lbs-spy/lbs_spy_to_nes_conv_page.dart.dart';
import 'brain/direct-indirect/lbs-spy/lbs_spy_to_new_conv_page.dart.dart';
import 'brain/direct-indirect/lbs-spy/lbs_spy_to_nm_conv_page.dart.dart';
import 'brain/indirect-direct/Ne/ne_to_den_conv_page.dart';
import 'brain/indirect-direct/Ne/ne_to_lbs_spy_conv_page.dart';
import 'brain/indirect-direct/Ne/ne_to_tex_conv_page.dart';
import 'brain/indirect-direct/NeL/nel_to_den_conv_page.dart';
import 'brain/indirect-direct/NeL/nel_to_lbs_spy_conv_page.dart';
import 'brain/indirect-direct/NeL/nel_to_tex_conv_page.dart';
import 'brain/indirect-direct/NeS/nes_to_den_conv_page.dart';
import 'brain/indirect-direct/NeS/nes_to_lbs_spy_conv_page.dart';
import 'brain/indirect-direct/NeS/nes_to_tex_conv_page.dart';
import 'brain/indirect-direct/NeW/new_to_den_conv_page.dart';
import 'brain/indirect-direct/NeW/new_to_lbs_spy_conv_page.dart';
import 'brain/indirect-direct/NeW/new_to_tex_conv_page.dart';
import 'brain/indirect-direct/Nm/nm_to_den_conv_page.dart';
import 'brain/indirect-direct/Nm/nm_to_lbs_spy_conv_page.dart';
import 'brain/indirect-direct/Nm/nm_to_tex_conv_page.dart';
import 'brain/indirect-indirect/Ne/ne_to_nel_conv_page.dart';
import 'brain/indirect-indirect/Ne/ne_to_nes_conv_page.dart';
import 'brain/indirect-indirect/Ne/ne_to_new_conv_page.dart';
import 'brain/indirect-indirect/Ne/ne_to_nm_conv_page.dart';
import 'brain/indirect-indirect/NeL/nel_to_ne_conv_page.dart';
import 'brain/indirect-indirect/NeL/nel_to_nes_conv_page.dart';
import 'brain/indirect-indirect/NeL/nel_to_new_conv_page.dart';
import 'brain/indirect-indirect/NeL/nel_to_nm_conv_page.dart';
import 'brain/indirect-indirect/NeS/nes_to_ne_conv_page.dart';
import 'brain/indirect-indirect/NeS/nes_to_nel_conv_page.dart';
import 'brain/indirect-indirect/NeS/nes_to_new_conv_page.dart';
import 'brain/indirect-indirect/NeS/nes_to_nm_conv_page.dart';
import 'info/info_page.dart';
import 'pages/conversion_choice_page.dart';
import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/convpage': (context) => const ConversionChoicePage(),
        '/infopage': (context) => const InfoPage(),
        '/developerpage': (context) => const DeveloperPage(),
        '/directindirectmethod': (context) => const DirectIndirectMethod(),
        '/indirectdirectmethod': (context) => const IndirectDirectMethod(),
        '/indirectindirectmethod': (context) => const IndirectIndirectMethod(),
        '/directdirectmethod': (context) => const DirectDirectMethod(),
        '/netotex': (context) => const NeToTexConvPage(),
        '/netoden': (context) => const NeToDenConvPage(),
        '/netolbsspy': (context) => const NeToLbsSpyConvPage(),
        '/nmtotex': (context) => const NmToTexConvPage(),
        '/nmtoden': (context) => const NmToDenConvPage(),
        '/nmtolbsspy': (context) => const NmToLbsSpyConvPage(),
        '/newtotex': (context) => const NeWToTexConvPage(),
        '/newtoden': (context) => const NeWToDenConvPage(),
        '/newtolbsspy': (context) => const NeWToLbsSpyConvPage(),
        '/nestotex': (context) => const NeSToTexConvPage(),
        '/nestoden': (context) => const NeSToDenConvPage(),
        '/nestolbsspy': (context) => const NeSToLbsSpyConvPage(),
        '/neltotex': (context) => const NeLToTexConvPage(),
        '/neltoden': (context) => const NeLToDenConvPage(),
        '/neltolbsspy': (context) => const NeLToLbsSpyConvPage(),
        '/textone': (context) => const TexToNeConvPage(),
        '/textonm': (context) => const TexToNmConvPage(),
        '/textones': (context) => const TexToNeSConvPage(),
        '/textonew': (context) => const TexToNeWConvPage(),
        '/textonel': (context) => const TexToNeLConvPage(),
        '/dentone': (context) => const DenToNeConvPage(),
        '/dentonm': (context) => const DenToNmConvPage(),
        '/dentones': (context) => const DenToNeSConvPage(),
        '/dentonew': (context) => const DenToNeWConvPage(),
        '/dentonel': (context) => const DenToNeLConvPage(),
        '/lbsspytone': (context) => const LbsSpyToNeConvPage(),
        '/lbsspytonew': (context) => const LbsSpyToNeWConvPage(),
        '/lbsspytones': (context) => const LbsSpyToNeSConvPage(),
        '/lbsspytonel': (context) => const LbsSpyToNeLConvPage(),
        '/lbsspytonm': (context) => const LbsSpyToNmConvPage(),
        '/netonm': (context) => const NeToNmConvPage(),
        '/netonew': (context) => const NeToNeWConvPage(),
        '/netones': (context) => const NeToNeSConvPage(),
        '/netonel': (context) => const NeToNeLConvPage(),
        '/neltone': (context) => const NeLToNeConvPage(),
        '/neltonm': (context) => const NeLToNmConvPage(),
        '/neltones': (context) => const NeLToNeSConvPage(),
        '/neltonew': (context) => const NeLToNeWConvPage(),
        '/nestone': (context) => const NeSToNeConvPage(),
        '/nestonel': (context) => const NeSToNeLConvPage(),
        '/nestonew': (context) => const NeSToNeWConvPage(),
        '/nestonm': (context) => const NeSToNmConvPage(),
        '/textoden': (context) => const TexToDenConvPage(),
        '/textolbsspy': (context) => const TexToLbsSpyConvPage(),
        '/dentotex': (context) => const DenToTexConvPage(),
        '/dentolbsspy': (context) => const DenToLbsSpyConvPage(),
        '/lbsspytotex': (context) => const LbsSpyToTexConvPage(),
        '/lbsspytoden': (context) => const LbsSpyToDenConvPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
