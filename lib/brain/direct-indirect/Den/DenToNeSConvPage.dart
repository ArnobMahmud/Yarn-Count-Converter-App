import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class DenToNeSConvPage extends StatefulWidget {
  const DenToNeSConvPage({Key key}) : super(key: key);

  @override
  State<DenToNeSConvPage> createState() => _DenToNeSConvPageState();
}

class _DenToNeSConvPageState extends State<DenToNeSConvPage> {
  double den = 0;
  double dentones(den) {
    if (den <= 0) {
      return 0;
    }
    return 17439.72 / den;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Den - NeS',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in Den :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => den = 0,
            );
          } else {
            setState(
              () {
                den = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in NeS - ',
        result: dentones(den).toStringAsFixed(2),
      ),
    );
  }
}
