import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeWToTexConvPage extends StatefulWidget {
  const NeWToTexConvPage({super.key});

  @override
  State<NeWToTexConvPage> createState() => _NeWToTexConvPageState();
}

class _NeWToTexConvPageState extends State<NeWToTexConvPage> {
  double neW = 0;
  double newtotex(neW) {
    if (neW == 0) {
      return 0;
    }
    return 885.75 / neW;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeW - Tex',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in NeW :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => neW = 0,
            );
          } else {
            setState(
              () {
                neW = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in Tex - ',
        result: newtotex(neW).toStringAsFixed(2),
      ),
    );
  }
}
