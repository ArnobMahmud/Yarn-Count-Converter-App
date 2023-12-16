import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeToTexConvPage extends StatefulWidget {
  const NeToTexConvPage({super.key});

  @override
  State<NeToTexConvPage> createState() => _NeToTexConvPageState();
}

class _NeToTexConvPageState extends State<NeToTexConvPage> {

  double ne = 0;
  double netotex(ne) {
    if (ne <= 0) {
      return 0;
    }
    return 590.5 / ne;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Ne - Tex',
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
        resultTitle: 'Count in Tex - ',
        result: netotex(ne).toStringAsFixed(2),
      ),
    );
  }
}
