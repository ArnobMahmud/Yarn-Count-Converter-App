import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class LbsSpyToNeSConvPage extends StatefulWidget {
  const LbsSpyToNeSConvPage({super.key});

  @override
  State<LbsSpyToNeSConvPage> createState() => _LbsSpyToNeSConvPageState();
}

class _LbsSpyToNeSConvPageState extends State<LbsSpyToNeSConvPage> {
  double lbsspy = 0;
  double lbsspytones(lbsspy) {
    if (lbsspy <= 0) {
      return 0;
    }
    return 56.25 / lbsspy;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'lbs/spy - NeS',
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
        resultTitle: 'Count in NeS - ',
        result: lbsspytones(lbsspy).toStringAsFixed(2),
      ),
    );
  }
}
