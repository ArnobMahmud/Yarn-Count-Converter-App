import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class LbsSpyToNeLConvPage extends StatefulWidget {
  const LbsSpyToNeLConvPage({super.key});

  @override
  State<LbsSpyToNeLConvPage> createState() => _LbsSpyToNeLConvPageState();
}

class _LbsSpyToNeLConvPageState extends State<LbsSpyToNeLConvPage> {
  double lbsspy = 0;
  double lbsspytonel(lbsspy) {
    if (lbsspy <= 0) {
      return 0;
    }
    return 48 / lbsspy;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'lbs/spy - NeL',
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
        resultTitle: 'Count in NeL - ',
        result: lbsspytonel(lbsspy).toStringAsFixed(2),
      ),
    );
  }
}
