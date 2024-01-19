import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeLToNmConvPage extends StatefulWidget {
  const NeLToNmConvPage({super.key});

  @override
  State<NeLToNmConvPage> createState() => _NeLToNmConvPageState();
}

class _NeLToNmConvPageState extends State<NeLToNmConvPage> {
  double nel = 0;
  double neltonm(nel) {
    if (nel <= 0) {
      return 0;
    }
    return 0.606 * nel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeL - Nm',
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
        resultTitle: 'Count in Nm - ',
        result: neltonm(nel).toStringAsFixed(2),
      ),
    );
  }
}
