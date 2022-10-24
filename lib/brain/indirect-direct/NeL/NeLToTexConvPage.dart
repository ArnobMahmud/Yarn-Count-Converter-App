import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class NeLToTexConvPage extends StatefulWidget {
  NeLToTexConvPage({Key key}) : super(key: key);

  @override
  State<NeLToTexConvPage> createState() => _NeLToTexConvPageState();
}

class _NeLToTexConvPageState extends State<NeLToTexConvPage> {
  double neL = 0;
  double neltotex(neL) {
    if (neL == 0) {
      return 0;
    }
    return 1653.4 / neL;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeL - Tex',
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
        resultTitle: 'Count in Tex - ',
        result: neltotex(neL).toStringAsFixed(2),
      ),
    );
  }
}
