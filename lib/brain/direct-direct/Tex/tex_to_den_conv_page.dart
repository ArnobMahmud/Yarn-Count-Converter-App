import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class TexToDenConvPage extends StatefulWidget {
  const TexToDenConvPage({super.key});

  @override
  State<TexToDenConvPage> createState() => _TexToDenConvPageState();
}

class _TexToDenConvPageState extends State<TexToDenConvPage> {
  double tex = 0;
  double lbsspytoden(tex) {
    if (tex <= 0) {
      return 0;
    }
    return 5314.5 / tex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Tex - Den',
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
        resultTitle: 'Count in Den - ',
        result: lbsspytoden(tex).toStringAsFixed(2),
      ),
    );
  }
}
