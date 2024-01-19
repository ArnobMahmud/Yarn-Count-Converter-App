import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class DenToLbsSpyConvPage extends StatefulWidget {
  const DenToLbsSpyConvPage({super.key});

  @override
  State<DenToLbsSpyConvPage> createState() => _DenToLbsSpyConvPageState();
}

class _DenToLbsSpyConvPageState extends State<DenToLbsSpyConvPage> {
  double den = 0;
  double dentolbsspy(den) {
    if (den <= 0) {
      return 0;
    }
    return 0.003 * den;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Den - lbs/spy',
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
        resultTitle: 'Count in lbs/spy - ',
        result: dentolbsspy(den).toStringAsFixed(2),
      ),
    );
  }
}
