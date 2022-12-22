import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class DenToNeConvPage extends StatefulWidget {
  const DenToNeConvPage({Key key}) : super(key: key);

  @override
  State<DenToNeConvPage> createState() => _DenToNeConvPageState();
}

class _DenToNeConvPageState extends State<DenToNeConvPage> {
  double den = 0;
  double dentone(den) {
    if (den <= 0) {
      return 0;
    }
    return 5314.5 / den;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Den - Ne',
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
        resultTitle: 'Count in Ne - ',
        result: dentone(den).toStringAsFixed(2),
      ),
    );
  }
}
