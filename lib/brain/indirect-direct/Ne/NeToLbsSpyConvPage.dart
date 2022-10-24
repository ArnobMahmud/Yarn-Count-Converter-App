import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class NeToLbsSpyConvPage extends StatefulWidget {
  const NeToLbsSpyConvPage({Key key}) : super(key: key);

  @override
  State<NeToLbsSpyConvPage> createState() => _NeToLbsSpyConvPageState();
}

class _NeToLbsSpyConvPageState extends State<NeToLbsSpyConvPage> {
  double ne = 0;
  double netolbsspy(ne) {
    if (ne <= 0) {
      return 0;
    }
    return 17.143 / ne;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Ne - lbs/spy',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in Ne :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => ne = 0,
            );
          } else {
            setState(
              () {
                ne = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in lbs/spy - ',
        result: netolbsspy(ne).toStringAsFixed(2),
      ),
    );
  }
}
