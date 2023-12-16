import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class DenToNeSConvPage extends StatefulWidget {
  const DenToNeSConvPage({super.key});

  @override
  State<DenToNeSConvPage> createState() => _DenToNeSConvPageState();
}

class _DenToNeSConvPageState extends State<DenToNeSConvPage> {
  double den = 0;
  double dentones(den) {
    if (den <= 0) {
      return 0;
    }
    return 17439.72 / den;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Den - NeS',
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
        resultTitle: 'Count in NeS - ',
        result: dentones(den).toStringAsFixed(2),
      ),
    );
  }
}
