import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class DenToNeWConvPage extends StatefulWidget {
  const DenToNeWConvPage({super.key});

  @override
  State<DenToNeWConvPage> createState() => _DenToNeWConvPageState();
}

class _DenToNeWConvPageState extends State<DenToNeWConvPage> {
  double den = 0;
  double dentonew(den) {
    if (den <= 0) {
      return 0;
    }
    return 7972.45 / den;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Den - NeW',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in Den :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => den = 0,
            );
          } else {
            setState(
              () {
                den = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in NeW - ',
        result: dentonew(den).toStringAsFixed(2),
      ),
    );
  }
}
