import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeSToNeLConvPage extends StatefulWidget {
  const NeSToNeLConvPage({super.key});

  @override
  State<NeSToNeLConvPage> createState() => _NeSToNeLConvPageState();
}

class _NeSToNeLConvPageState extends State<NeSToNeLConvPage> {
  double nes = 0;
  double nestonel(nes) {
    if (nes <= 0) {
      return 0;
    }
    return 0.851 * nes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeS - NeL',
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
        resultTitle: 'Count in NeL - ',
        result: nestonel(nes).toStringAsFixed(2),
      ),
    );
  }
}
