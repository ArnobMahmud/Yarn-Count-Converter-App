import 'package:flutter/material.dart';

import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeSToNmConvPage extends StatefulWidget {
  const NeSToNmConvPage({super.key});

  @override
  State<NeSToNmConvPage> createState() => _NeSToNmConvPageState();
}

class _NeSToNmConvPageState extends State<NeSToNmConvPage> {
  double nes = 0;
  double nestonm(nes) {
    if (nes <= 0) {
      return 0;
    }
    return 0.515 * nes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeS - Nm',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in NeS :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => nes = 0,
            );
          } else {
            setState(
              () {
                nes = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in Nm - ',
        result: nestonm(nes).toStringAsFixed(2),
      ),
    );
  }
}
