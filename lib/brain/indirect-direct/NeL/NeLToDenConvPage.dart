import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class NeLToDenConvPage extends StatefulWidget {
  const NeLToDenConvPage({Key key}) : super(key: key);

  @override
  State<NeLToDenConvPage> createState() => _NeLToDenConvPageState();
}

class _NeLToDenConvPageState extends State<NeLToDenConvPage> {
  double neL = 0;
  double neltoden(neL) {
    if (neL == 0) {
      return 0;
    }
    return 1.4882 / neL;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeL - Den',
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
        resultTitle: 'Count in Den - ',
        result: neltoden(neL).toStringAsFixed(2),
      ),
    );
  }
}
