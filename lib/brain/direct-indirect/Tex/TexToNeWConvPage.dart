import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class TexToNeWConvPage extends StatefulWidget {
  const TexToNeWConvPage({Key key}) : super(key: key);

  @override
  State<TexToNeWConvPage> createState() => _TexToNeWConvPageState();
}

class _TexToNeWConvPageState extends State<TexToNeWConvPage> {
  double tex = 0;
  double textonew(tex) {
    if (tex <= 0) {
      return 0;
    }
    return 885.83 / tex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Tex - NeW',
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
        resultTitle: 'Count in NeW - ',
        result: textonew(tex).toStringAsFixed(2),
      ),
    );
  }
}
