import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class TexToNeLConvPage extends StatefulWidget {
  const TexToNeLConvPage({Key key}) : super(key: key);

  @override
  State<TexToNeLConvPage> createState() => _TexToNeLConvPageState();
}

class _TexToNeLConvPageState extends State<TexToNeLConvPage> {
  double tex = 0;
  double textonel(tex) {
    if (tex <= 0) {
      return 0;
    }
    return 1653.54 / tex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Tex - NeL',
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
        resultTitle: 'Count in NeL - ',
        result: textonel(tex).toStringAsFixed(2),
      ),
    );
  }
}
