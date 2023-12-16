import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class TexToNeLConvPage extends StatefulWidget {
  const TexToNeLConvPage({super.key});

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
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
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
