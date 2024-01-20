import 'package:flutter/material.dart';
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
import 'brain/indirect-indirect/NeW/new_to_ne_conv_page.dart';
import 'brain/indirect-indirect/NeW/new_to_nel_conv_page.dart';
import 'brain/indirect-indirect/NeW/new_to_nes_conv_page.dart';
import 'brain/indirect-indirect/NeW/new_to_nm_conv_page.dart';
import 'brain/indirect-indirect/Nm/nm_to_ne_conv_page.dart';
import 'brain/indirect-indirect/Nm/nm_to_nel_conv_page.dart.dart';
import 'brain/indirect-indirect/Nm/nm_to_nes_conv_page.dart.dart';
import 'brain/indirect-indirect/Nm/nm_to_new_conv_page.dart.dart';
import 'info/developer_page.dart';
import 'info/info_page.dart';
import 'pages/conversion_choice_page.dart';
import 'pages/home_page.dart';
import 'pages/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
        '/convpage': (context) => const ConversionChoicePage(),
        '/infopage': (context) => const InfoPage(),
        '/developerpage': (context) => const DeveloperPage(),

        /* Nav */
        '/directindirectmethod': (context) => const DirectIndirectMethod(),
        '/indirectdirectmethod': (context) => const IndirectDirectMethod(),
        '/indirectindirectmethod': (context) => const IndirectIndirectMethod(),
        '/directdirectmethod': (context) => const DirectDirectMethod(),

        /* Indirect -> Direct */

        /* Ne */
        '/netotex': (context) => const NeToTexConvPage(),
        '/netoden': (context) => const NeToDenConvPage(),
        '/netolbsspy': (context) => const NeToLbsSpyConvPage(),
        /* Nm */
        '/nmtotex': (context) => const NmToTexConvPage(),
        '/nmtoden': (context) => const NmToDenConvPage(),
        '/nmtolbsspy': (context) => const NmToLbsSpyConvPage(),
        /* NeW */
        '/newtotex': (context) => const NeWToTexConvPage(),
        '/newtoden': (context) => const NeWToDenConvPage(),
        '/newtolbsspy': (context) => const NeWToLbsSpyConvPage(),
        /* NeS */
        '/nestotex': (context) => const NeSToTexConvPage(),
        '/nestoden': (context) => const NeSToDenConvPage(),
        '/nestolbsspy': (context) => const NeSToLbsSpyConvPage(),
        /* NeL */
        '/neltotex': (context) => const NeLToTexConvPage(),
        '/neltoden': (context) => const NeLToDenConvPage(),
        '/neltolbsspy': (context) => const NeLToLbsSpyConvPage(),

        /* Direct -> Indirect */

        /* Tex */
        '/textone': (context) => const TexToNeConvPage(),
        '/textonm': (context) => const TexToNmConvPage(),
        '/textones': (context) => const TexToNeSConvPage(),
        '/textonew': (context) => const TexToNeWConvPage(),
        '/textonel': (context) => const TexToNeLConvPage(),
        /* Den */
        '/dentone': (context) => const DenToNeConvPage(),
        '/dentonm': (context) => const DenToNmConvPage(),
        '/dentones': (context) => const DenToNeSConvPage(),
        '/dentonew': (context) => const DenToNeWConvPage(),
        '/dentonel': (context) => const DenToNeLConvPage(),
        /* lbs/spy */
        '/lbsspytone': (context) => const LbsSpyToNeConvPage(),
        '/lbsspytonm': (context) => const LbsSpyToNmConvPage(),
        '/lbsspytonew': (context) => const LbsSpyToNeWConvPage(),
        '/lbsspytones': (context) => const LbsSpyToNeSConvPage(),
        '/lbsspytonel': (context) => const LbsSpyToNeLConvPage(),

        /* Indirect -> Indirect */

        /* Ne */
        '/netonm': (context) => const NeToNmConvPage(),
        '/netonew': (context) => const NeToNeWConvPage(),
        '/netones': (context) => const NeToNeSConvPage(),
        '/netonel': (context) => const NeToNeLConvPage(),
        /* Nm */
        '/nmtone': (context) => const NmToNeConvPage(),
        '/nmtonel': (context) => const NmToNeLConvPage(),
        '/nmtones': (context) => const NmToNeSConvPage(),
        '/nmtonew': (context) => const NmToNeWConvPage(),
        /* NeS */
        '/nestone': (context) => const NeSToNeConvPage(),
        '/nestonel': (context) => const NeSToNeLConvPage(),
        '/nestonew': (context) => const NeSToNeWConvPage(),
        '/nestonm': (context) => const NeSToNmConvPage(),
        /* NeW */
        '/newtone': (context) => const NeWToNeConvPage(),
        '/newtonm': (context) => const NeWToNmConvPage(),
        '/newtonel': (context) => const NeWToNeLConvPage(),
        '/newtones': (context) => const NeWToNeSConvPage(),
        /* NeL */
        '/neltone': (context) => const NeLToNeConvPage(),
        '/neltonm': (context) => const NeLToNmConvPage(),
        '/neltones': (context) => const NeLToNeSConvPage(),
        '/neltonew': (context) => const NeLToNeWConvPage(),

        /* Direct -> Direct */

        /* Tex */
        '/textoden': (context) => const TexToDenConvPage(),
        '/textolbsspy': (context) => const TexToLbsSpyConvPage(),
        /* Den */
        '/dentotex': (context) => const DenToTexConvPage(),
        '/dentolbsspy': (context) => const DenToLbsSpyConvPage(),
        /* lbs/spy */
        '/lbsspytotex': (context) => const LbsSpyToTexConvPage(),
        '/lbsspytoden': (context) => const LbsSpyToDenConvPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
