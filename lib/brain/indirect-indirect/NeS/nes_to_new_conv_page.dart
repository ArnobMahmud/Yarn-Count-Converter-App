import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeSToNeWConvPage extends StatefulWidget {
  const NeSToNeWConvPage({super.key});

  @override
  State<NeSToNeWConvPage> createState() => _NeSToNeWConvPageState();
}

class _NeSToNeWConvPageState extends State<NeSToNeWConvPage> {
  double nes = 0;
  double nestonew(nes) {
    if (nes <= 0) {
      return 0;
    }
    return 0.457 * nes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeS - NeW',
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
        resultTitle: 'Count in NeW - ',
        result: nestonew(nes).toStringAsFixed(2),
      ),
    );
  }
}
