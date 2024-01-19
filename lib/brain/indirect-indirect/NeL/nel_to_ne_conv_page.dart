import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeLToNeConvPage extends StatefulWidget {
  const NeLToNeConvPage({super.key});

  @override
  State<NeLToNeConvPage> createState() => _NeLToNeConvPageState();
}

class _NeLToNeConvPageState extends State<NeLToNeConvPage> {
  double nel = 0;
  double neltone(nel) {
    if (nel <= 0) {
      return 0;
    }
    return 0.358 * nel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeL - Ne',
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
        resultTitle: 'Count in Ne - ',
        result: neltone(nel).toStringAsFixed(2),
      ),
    );
  }
}
