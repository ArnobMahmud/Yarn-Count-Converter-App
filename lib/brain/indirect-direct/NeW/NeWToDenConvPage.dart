import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class NeWToDenConvPage extends StatefulWidget {
  const NeWToDenConvPage({Key key}) : super(key: key);

  @override
  State<NeWToDenConvPage> createState() => _NeWToDenConvPageState();
}

class _NeWToDenConvPageState extends State<NeWToDenConvPage> {
 double neW = 0;
  double newtoden(neW) {
    if (neW == 0) {
      return 0;
    }
    return 0.79725 / neW;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeW - Den',
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
        resultTitle: 'Count in Den - ',
        result: newtoden(neW).toStringAsFixed(2),
      ),
    );
  }
}

