import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeToNmConvPage extends StatefulWidget {
  const NeToNmConvPage({ super.key });

  @override
  State<NeToNmConvPage> createState() => _NeToNmConvPageState();
}

class _NeToNmConvPageState extends State<NeToNmConvPage> {
  double ne = 0;
  double netonm(ne) {
    if (ne == 0) {
      return 0;
    }
    return ne / 0.59;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Ne - Nm',
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
        resultTitle: 'Count in Nm - ',
        result: netonm(ne).toStringAsFixed(2),
      ),
    );
  }
}
