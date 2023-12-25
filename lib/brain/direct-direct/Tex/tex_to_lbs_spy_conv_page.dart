import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class TexToLbsSpyConvPage extends StatefulWidget {
  const TexToLbsSpyConvPage({super.key});

  @override
  State<TexToLbsSpyConvPage> createState() => _TexToLbsSpyConvPageState();
}

class _TexToLbsSpyConvPageState extends State<TexToLbsSpyConvPage> {
  double tex = 0;
  double lbsspytolbsspy(tex) {
    if (tex <= 0) {
      return 0;
    }
    return 5314.5 / tex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Tex - lbs/spy',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in Tex :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => tex = 0,
            );
          } else {
            setState(
              () {
                tex = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in lbs/spy - ',
        result: lbsspytolbsspy(tex).toStringAsFixed(2),
      ),
    );
  }
}
