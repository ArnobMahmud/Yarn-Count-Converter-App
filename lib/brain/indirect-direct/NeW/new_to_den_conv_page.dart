import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeWToDenConvPage extends StatefulWidget {
  const NeWToDenConvPage({super.key});

  @override
  State<NeWToDenConvPage> createState() => _NeWToDenConvPageState();
}

class _NeWToDenConvPageState extends State<NeWToDenConvPage> {
  double neW = 0;
  double newtoden(neW) {
    if (neW == 0) {
      return 0;
    }
    return 0.79725 / neW;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeW - Den',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in NeW :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => neW = 0,
            );
          } else {
            setState(
              () {
                neW = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in Den - ',
        result: newtoden(neW).toStringAsFixed(2),
      ),
    );
  }
}
