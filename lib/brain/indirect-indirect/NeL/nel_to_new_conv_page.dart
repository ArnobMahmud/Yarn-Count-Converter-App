import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeLToNeWConvPage extends StatefulWidget {
  const NeLToNeWConvPage({super.key});

  @override
  State<NeLToNeWConvPage> createState() => _NeLToNeWConvPageState();
}

class _NeLToNeWConvPageState extends State<NeLToNeWConvPage> {
  double nel = 0;
  double neltonew(nel) {
    if (nel <= 0) {
      return 0;
    }
    return 0.537 * nel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeL - NeW',
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
        resultTitle: 'Count in NeW - ',
        result: neltonew(nel).toStringAsFixed(2),
      ),
    );
  }
}
