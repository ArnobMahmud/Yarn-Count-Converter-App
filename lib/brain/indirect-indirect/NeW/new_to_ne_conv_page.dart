import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeWToNeConvPage extends StatefulWidget {
  const NeWToNeConvPage({super.key});

  @override
  State<NeWToNeConvPage> createState() => _NeWToNeConvPageState();
}

class _NeWToNeConvPageState extends State<NeWToNeConvPage> {
  double neW = 0;
  double newtone(neW) {
    if (neW <= 0) {
      return 0;
    }
    return 0.666 * neW;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeW - Ne',
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
        resultTitle: 'Count in Ne - ',
        result: newtone(neW).toStringAsFixed(2),
      ),
    );
  }
}
