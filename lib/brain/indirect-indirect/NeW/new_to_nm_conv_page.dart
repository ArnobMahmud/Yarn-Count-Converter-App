import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeWToNmConvPage extends StatefulWidget {
  const NeWToNmConvPage({super.key});

  @override
  State<NeWToNmConvPage> createState() => _NeWToNmConvPageState();
}

class _NeWToNmConvPageState extends State<NeWToNmConvPage> {
  double neW = 0;
  double newtonm(neW) {
    if (neW <= 0) {
      return 0;
    }
    return 1.129 * neW;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeW - Nm',
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
        resultTitle: 'Count in Nm - ',
        result: newtonm(neW).toStringAsFixed(2),
      ),
    );
  }
}
