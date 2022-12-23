import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class NeToNmConvPage extends StatefulWidget {
  const NeToNmConvPage({Key key}) : super(key: key);

  @override
  State<NeToNmConvPage> createState() => _NeToNmConvPageState();
}

class _NeToNmConvPageState extends State<NeToNmConvPage> {
  double ne = 0;
  double netonm(ne) {
    if (ne == 0) {
      return 0;
    }
    return ne / 0.59;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Ne - Nm',
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
        resultTitle: 'Count in Nm - ',
        result: netonm(ne).toStringAsFixed(2),
      ),
    );
  }
}
