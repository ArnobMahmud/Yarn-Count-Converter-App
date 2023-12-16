import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class LbsSpyToNmConvPage extends StatefulWidget {
  const LbsSpyToNmConvPage({super.key});

  @override
  State<LbsSpyToNmConvPage> createState() => _LbsSpyToNmConvPageState();
}

class _LbsSpyToNmConvPageState extends State<LbsSpyToNmConvPage> {
  double lbsspy = 0;
  double lbsspytonm(lbsspy) {
    if (lbsspy <= 0) {
      return 0;
    }
    return 29.02 / lbsspy;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'lbs/spy - Nm',
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
        resultTitle: 'Count in Nm - ',
        result: lbsspytonm(lbsspy).toStringAsFixed(2),
      ),
    );
  }
}
