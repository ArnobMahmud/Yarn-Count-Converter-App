import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class LbsSpyToNeLConvPage extends StatefulWidget {
  const LbsSpyToNeLConvPage({Key key}) : super(key: key);

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
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
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
