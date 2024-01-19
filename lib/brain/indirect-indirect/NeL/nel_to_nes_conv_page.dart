import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeLToNeSConvPage extends StatefulWidget {
  const NeLToNeSConvPage({super.key});

  @override
  State<NeLToNeSConvPage> createState() => _NeLToNeSConvPageState();
}

class _NeLToNeSConvPageState extends State<NeLToNeSConvPage> {
  double nel = 0;
  double neltones(nel) {
    if (nel <= 0) {
      return 0;
    }
    return 1.176 * nel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeL - NeS',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in NeL :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => nel = 0,
            );
          } else {
            setState(
              () {
                nel = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in NeS - ',
        result: neltones(nel).toStringAsFixed(2),
      ),
    );
  }
}
