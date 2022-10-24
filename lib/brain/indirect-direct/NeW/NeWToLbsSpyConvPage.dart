import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class NeWToLbsSpyConvPage extends StatefulWidget {
  const NeWToLbsSpyConvPage({Key key}) : super(key: key);

  @override
  State<NeWToLbsSpyConvPage> createState() => _NeWToLbsSpyConvPageState();
}

class _NeWToLbsSpyConvPageState extends State<NeWToLbsSpyConvPage> {
 double neW = 0;
  double newtolbsspy(neW) {
    if (neW == 0) {
      return 0;
    }
    return 25.7145 / neW;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeW - lbs/spy',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in NeW :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => neW = 0,
            );
          } else {
            setState(
              () {
                neW = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in lbs/spy - ',
        result: newtolbsspy(neW).toStringAsFixed(2),
      ),
    );
  }
}
