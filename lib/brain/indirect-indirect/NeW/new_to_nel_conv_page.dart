import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeWToNeLConvPage extends StatefulWidget {
  const NeWToNeLConvPage({super.key});

  @override
  State<NeWToNeLConvPage> createState() => _NeWToNeLConvPageState();
}

class _NeWToNeLConvPageState extends State<NeWToNeLConvPage> {
  double neW = 0;
  double newtonel(neW) {
    if (neW <= 0) {
      return 0;
    }
    return 1.862 * neW;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeW - NeL',
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
        resultTitle: 'Count in NeL - ',
        result: newtonel(neW).toStringAsFixed(2),
      ),
    );
  }
}
