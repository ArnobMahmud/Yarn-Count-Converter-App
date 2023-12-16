import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class DenToNeLConvPage extends StatefulWidget {
  const DenToNeLConvPage({super.key});

  @override
  State<DenToNeLConvPage> createState() => _DenToNeLConvPageState();
}

class _DenToNeLConvPageState extends State<DenToNeLConvPage> {
  double den = 0;
  double dentonel(den) {
    if (den <= 0) {
      return 0;
    }
    return 14881.88 / den;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Den - NeL',
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
        resultTitle: 'Count in NeL - ',
        result: dentonel(den).toStringAsFixed(2),
      ),
    );
  }
}
