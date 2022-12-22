import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class DenToNeWConvPage extends StatefulWidget {
  const DenToNeWConvPage({Key key}) : super(key: key);

  @override
  State<DenToNeWConvPage> createState() => _DenToNeWConvPageState();
}

class _DenToNeWConvPageState extends State<DenToNeWConvPage> {
  double den = 0;
  double dentonew(den) {
    if (den <= 0) {
      return 0;
    }
    return 7972.45 / den;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Den - NeW',
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
        resultTitle: 'Count in NeW - ',
        result: dentonew(den).toStringAsFixed(2),
      ),
    );
  }
}
