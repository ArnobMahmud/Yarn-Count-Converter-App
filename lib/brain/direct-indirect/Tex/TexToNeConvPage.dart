import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class TexToNeConvPage extends StatefulWidget {
  const TexToNeConvPage({Key key}) : super(key: key);

  @override
  State<TexToNeConvPage> createState() => _TexToNeConvPageState();
}

class _TexToNeConvPageState extends State<TexToNeConvPage> {
  double tex = 0;
  double textone(tex) {
    if (tex <= 0) {
      return 0;
    }
    return 590.5 / tex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Tex - Ne',
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
        resultTitle: 'Count in Ne - ',
        result: textone(tex).toStringAsFixed(2),
      ),
    );
  }
}
