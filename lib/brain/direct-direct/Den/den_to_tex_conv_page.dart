import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class DenToTexConvPage extends StatefulWidget {
  const DenToTexConvPage({super.key});

  @override
  State<DenToTexConvPage> createState() => _DenToTexConvPageState();
}

class _DenToTexConvPageState extends State<DenToTexConvPage> {
  double den = 0;
  double dentotex(den) {
    if (den <= 0) {
      return 0;
    }
    return 5314.5 / den;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Den - Tex',
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
        resultTitle: 'Count in Tex - ',
        result: dentotex(den).toStringAsFixed(2),
      ),
    );
  }
}
