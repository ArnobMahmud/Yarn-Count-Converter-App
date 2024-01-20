import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeSToNeConvPage extends StatefulWidget {
  const NeSToNeConvPage({super.key});

  @override
  State<NeSToNeConvPage> createState() => _NeSToNeConvPageState();
}

class _NeSToNeConvPageState extends State<NeSToNeConvPage> {
  double nes = 0;
  double nestone(nes) {
    if (nes <= 0) {
      return 0;
    }
    return 0.304 * nes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeS - Ne',
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
        resultTitle: 'Count in Ne - ',
        result: nestone(nes).toStringAsFixed(2),
      ),
    );
  }
}
