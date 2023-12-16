import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class LbsSpyToNeConvPage extends StatefulWidget {
  const LbsSpyToNeConvPage({super.key});

  @override
  State<LbsSpyToNeConvPage> createState() => _LbsSpyToNeConvPageState();
}

class _LbsSpyToNeConvPageState extends State<LbsSpyToNeConvPage> {
  double lbsspy = 0;
  double lbsspytone(lbsspy) {
    if (lbsspy <= 0) {
      return 0;
    }
    return 17.14 / lbsspy;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'lbs/spy - Ne',
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
        resultTitle: 'Count in Ne - ',
        result: lbsspytone(lbsspy).toStringAsFixed(2),
      ),
    );
  }
}
