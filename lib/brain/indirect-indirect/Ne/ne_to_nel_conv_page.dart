import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeToNeLConvPage extends StatefulWidget {
  const NeToNeLConvPage({super.key});

  @override
  State<NeToNeLConvPage> createState() => _NeToNeLConvPageState();
}

class _NeToNeLConvPageState extends State<NeToNeLConvPage> {
  double ne = 0;
  double netonel(ne) {
    if (ne == 0) {
      return 0;
    }
    return ne * 2.797;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Ne - NeL',
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
        resultTitle: 'Count in NeL - ',
        result: netonel(ne).toStringAsFixed(2),
      ),
    );
  }
}
