import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class TexToNeSConvPage extends StatefulWidget {
  const TexToNeSConvPage({super.key});

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
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
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
