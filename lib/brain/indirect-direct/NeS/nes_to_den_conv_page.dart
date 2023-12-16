import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeSToDenConvPage extends StatefulWidget {
  const NeSToDenConvPage({super.key});

  @override
  State<NeSToDenConvPage> createState() => _NeSToDenConvPageState();
}

class _NeSToDenConvPageState extends State<NeSToDenConvPage> {
  double neS = 0;
  double nestoden(neS) {
    if (neS == 0) {
      return 0;
    }
    return 1.74396 / neS;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeS - Den',
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
        resultTitle: 'Count in Den - ',
        result: nestoden(neS).toStringAsFixed(2),
      ),
    );
  }
}
