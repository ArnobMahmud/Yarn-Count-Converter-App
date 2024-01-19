import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class LbsSpyToTexConvPage extends StatefulWidget {
  const LbsSpyToTexConvPage({super.key});

  @override
  State<LbsSpyToTexConvPage> createState() => _LbsSpyToTexConvPageState();
}

class _LbsSpyToTexConvPageState extends State<LbsSpyToTexConvPage> {
  double lbsspy = 0;
  double lbsspytotex(lbsspy) {
    if (lbsspy <= 0) {
      return 0;
    }
    return 35.09 * lbsspy;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'lbs/spy - Tex',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in lbs/spy :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => lbsspy = 0,
            );
          } else {
            setState(
              () {
                lbsspy = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in Tex - ',
        result: lbsspytotex(lbsspy).toStringAsFixed(2),
      ),
    );
  }
}
