import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class LbsSpyToDenConvPage extends StatefulWidget {
  const LbsSpyToDenConvPage({super.key});

  @override
  State<LbsSpyToDenConvPage> createState() => _LbsSpyToDenConvPageState();
}

class _LbsSpyToDenConvPageState extends State<LbsSpyToDenConvPage> {
  double lbsspy = 0;
  double lbsspytoden(lbsspy) {
    if (lbsspy <= 0) {
      return 0;
    }
    return 319.319 * lbsspy;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'lbs/spy - Den',
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
        resultTitle: 'Count in Den - ',
        result: lbsspytoden(lbsspy).toStringAsFixed(2),
      ),
    );
  }
}
