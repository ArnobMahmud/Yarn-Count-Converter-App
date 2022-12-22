import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class TexToNmConvPage extends StatefulWidget {
  const TexToNmConvPage({ Key key }) : super(key: key);

  @override
  State<TexToNmConvPage> createState() => _TexToNmConvPageState();
}

class _TexToNmConvPageState extends State<TexToNmConvPage> {
  double tex = 0;
  double textonm(tex) {
    if (tex <= 0) {
      return 0;
    }
    return 1001.01 / tex;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Tex - Nm',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in Tex :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => tex = 0,
            );
          } else {
            setState(
              () {
                tex = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in Nm - ',
        result: textonm(tex).toStringAsFixed(2),
      ),
    );

  }
}