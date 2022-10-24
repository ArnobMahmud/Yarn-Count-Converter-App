import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class NeLToLbsSpyConvPage extends StatefulWidget {
  const NeLToLbsSpyConvPage({Key key}) : super(key: key);

  @override
  State<NeLToLbsSpyConvPage> createState() => _NeLToLbsSpyConvPageState();
}

class _NeLToLbsSpyConvPageState extends State<NeLToLbsSpyConvPage> {
  double neL = 0;
  double neltolbsspy(neL) {
    if (neL == 0) {
      return 0;
    }
    return 48 / neL;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeL - lbs/spy',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in NeL :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => neL = 0,
            );
          } else {
            setState(
              () {
                neL = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in lbs/spy - ',
        result: neltolbsspy(neL).toStringAsFixed(2),
      ),
    );
  }
}
