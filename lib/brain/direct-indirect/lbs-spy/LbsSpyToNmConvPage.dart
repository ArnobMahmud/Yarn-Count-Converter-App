import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class LbsSpyToNmConvPage extends StatefulWidget {
  const LbsSpyToNmConvPage({Key key}) : super(key: key);

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
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
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
