import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class DenToNmConvPage extends StatefulWidget {
  const DenToNmConvPage({super.key});

  @override
  State<DenToNmConvPage> createState() => _DenToNmConvPageState();
}

class _DenToNmConvPageState extends State<DenToNmConvPage> {
  double den = 0;
  double dentonm(den) {
    if (den <= 0) {
      return 0;
    }
    return 9009.09 / den;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Den - Nm',
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
        resultTitle: 'Count in Nm - ',
        result: dentonm(den).toStringAsFixed(2),
      ),
    );
  }
}
