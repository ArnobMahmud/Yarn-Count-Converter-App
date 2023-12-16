import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class TexToNmConvPage extends StatefulWidget {
  const TexToNmConvPage({super.key });

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
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
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