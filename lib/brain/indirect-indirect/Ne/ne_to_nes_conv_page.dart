import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeToNeSConvPage extends StatefulWidget {
  const NeToNeSConvPage({super.key});

  @override
  State<NeToNeSConvPage> createState() => _NeToNeSConvPageState();
}

class _NeToNeSConvPageState extends State<NeToNeSConvPage> {
  double ne = 0;
  double netones(ne) {
    if (ne == 0) {
      return 0;
    }
    return ne / 1.9;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Ne - NeS',
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
        resultTitle: 'Count in NeS - ',
        result: netones(ne).toStringAsFixed(2),
      ),
    );
  }
}
