import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class LbsSpyToNeSConvPage extends StatefulWidget {
  const LbsSpyToNeSConvPage({Key key}) : super(key: key);

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
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
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
