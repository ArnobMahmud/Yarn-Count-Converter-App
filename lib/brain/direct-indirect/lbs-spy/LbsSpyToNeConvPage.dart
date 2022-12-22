import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class LbsSpyToNeConvPage extends StatefulWidget {
  const LbsSpyToNeConvPage({Key key}) : super(key: key);

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
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
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
