import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class LbsSpyToNeWConvPage extends StatefulWidget {
  const LbsSpyToNeWConvPage({Key key}) : super(key: key);

  @override
  State<LbsSpyToNeWConvPage> createState() => _LbsSpyToNeWConvPageState();
}

class _LbsSpyToNeWConvPageState extends State<LbsSpyToNeWConvPage> {
  double lbsspy = 0;
  double lbsspytonew(lbsspy) {
    if (lbsspy <= 0) {
      return 0;
    }
    return 25.71 / lbsspy;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'lbs/spy - NeW',
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
        resultTitle: 'Count in NeW - ',
        result: lbsspytonew(lbsspy).toStringAsFixed(2),
      ),
    );
  }
}
