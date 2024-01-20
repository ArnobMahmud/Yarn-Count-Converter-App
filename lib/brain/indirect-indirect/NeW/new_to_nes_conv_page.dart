import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeWToNeSConvPage extends StatefulWidget {
  const NeWToNeSConvPage({super.key});

  @override
  State<NeWToNeSConvPage> createState() => _NeWToNeSConvPageState();
}

class _NeWToNeSConvPageState extends State<NeWToNeSConvPage> {
  double neW = 0;
  double newtones(neW) {
    if (neW <= 0) {
      return 0;
    }
    return 2.19 * neW;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeW - NeS',
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
        resultTitle: 'Count in NeS - ',
        result: newtones(neW).toStringAsFixed(2),
      ),
    );
  }
}
