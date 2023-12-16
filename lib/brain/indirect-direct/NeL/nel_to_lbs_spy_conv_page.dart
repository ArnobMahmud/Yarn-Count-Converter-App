import 'package:flutter/material.dart';

import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeLToLbsSpyConvPage extends StatefulWidget {
  const NeLToLbsSpyConvPage({super.key});

  @override
  State<NeLToLbsSpyConvPage> createState() => _NeLToLbsSpyConvPageState();
}

class _NeLToLbsSpyConvPageState extends State<NeLToLbsSpyConvPage> {
  double neL = 0;
  double neltolbsspy(neL) {
    if (neL == 0) {
      return 0;
    }
    return 48 / neL;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeL - lbs/spy',
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
        resultTitle: 'Count in lbs/spy - ',
        result: neltolbsspy(neL).toStringAsFixed(2),
      ),
    );
  }
}
