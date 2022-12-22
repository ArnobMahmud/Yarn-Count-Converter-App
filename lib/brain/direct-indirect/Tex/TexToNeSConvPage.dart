import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class TexToNeSConvPage extends StatefulWidget {
  const TexToNeSConvPage({Key key}) : super(key: key);

  @override
  State<TexToNeSConvPage> createState() => _TexToNeSConvPageState();
}

class _TexToNeSConvPageState extends State<TexToNeSConvPage> {
  double tex = 0;
  double textones(tex) {
    if (tex <= 0) {
      return 0;
    }
    return 1937.74 / tex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Tex - NeS',
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
        resultTitle: 'Count in NeS - ',
        result: textones(tex).toStringAsFixed(2),
      ),
    );
  }
}
