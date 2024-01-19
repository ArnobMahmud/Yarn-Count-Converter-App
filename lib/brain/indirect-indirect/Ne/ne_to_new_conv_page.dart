import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeToNeWConvPage extends StatefulWidget {
  const NeToNeWConvPage({super.key});

  @override
  State<NeToNeWConvPage> createState() => _NeToNeWConvPageState();
}

class _NeToNeWConvPageState extends State<NeToNeWConvPage> {
  double ne = 0;
  double netonew(ne) {
    if (ne == 0) {
      return 0;
    }
    return ne * 1.49;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Ne - NeW',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in Ne :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => ne = 0,
            );
          } else {
            setState(
              () {
                ne = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in NeW - ',
        result: netonew(ne).toStringAsFixed(2),
      ),
    );
  }
}
