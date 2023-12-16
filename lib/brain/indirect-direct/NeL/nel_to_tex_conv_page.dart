import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeLToTexConvPage extends StatefulWidget {
  const NeLToTexConvPage({super.key});

  @override
  State<NeLToTexConvPage> createState() => _NeLToTexConvPageState();
}

class _NeLToTexConvPageState extends State<NeLToTexConvPage> {
  double neL = 0;
  double neltotex(neL) {
    if (neL == 0) {
      return 0;
    }
    return 1653.4 / neL;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeL - Tex',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in NeL :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => neL = 0,
            );
          } else {
            setState(
              () {
                neL = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in Tex - ',
        result: neltotex(neL).toStringAsFixed(2),
      ),
    );
  }
}
