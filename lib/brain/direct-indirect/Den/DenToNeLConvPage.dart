import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class DenToNeLConvPage extends StatefulWidget {
  const DenToNeLConvPage({Key key}) : super(key: key);

  @override
  State<DenToNeLConvPage> createState() => _DenToNeLConvPageState();
}

class _DenToNeLConvPageState extends State<DenToNeLConvPage> {
  double den = 0;
  double dentonel(den) {
    if (den <= 0) {
      return 0;
    }
    return 14881.88 / den;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Den - NeL',
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
        resultTitle: 'Count in NeL - ',
        result: dentonel(den).toStringAsFixed(2),
      ),
    );
  }
}
