import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeSToLbsSpyConvPage extends StatefulWidget {
  const NeSToLbsSpyConvPage({ super.key });

  @override
  State<NeSToLbsSpyConvPage> createState() => _NeSToLbsSpyConvPageState();
}

class _NeSToLbsSpyConvPageState extends State<NeSToLbsSpyConvPage> {
  double neS = 0;
  double nestolbsspy(neS) {
    if (neS == 0) {
      return 0;
    }
    return 56.2496 / neS;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeS - lbs/spy',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in NeS :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => neS = 0,
            );
          } else {
            setState(
              () {
                neS = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in lbs/spy - ',
        result: nestolbsspy(neS).toStringAsFixed(2),
      ),
    );
  }
}
