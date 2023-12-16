import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeLToDenConvPage extends StatefulWidget {
  const NeLToDenConvPage({super.key});

  @override
  State<NeLToDenConvPage> createState() => _NeLToDenConvPageState();
}

class _NeLToDenConvPageState extends State<NeLToDenConvPage> {
  double neL = 0;
  double neltoden(neL) {
    if (neL == 0) {
      return 0;
    }
    return 1.4882 / neL;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeL - Den',
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
        resultTitle: 'Count in Den - ',
        result: neltoden(neL).toStringAsFixed(2),
      ),
    );
  }
}
