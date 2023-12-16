import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class TexToNeWConvPage extends StatefulWidget {
  const TexToNeWConvPage({super.key});

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
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
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
