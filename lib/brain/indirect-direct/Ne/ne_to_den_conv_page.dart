import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeToDenConvPage extends StatefulWidget {
  const NeToDenConvPage({super.key});

  @override
  State<NeToDenConvPage> createState() => _NeToDenConvPageState();
}

class _NeToDenConvPageState extends State<NeToDenConvPage> {
  double ne = 0;
  double netoden(ne) {
    if (ne == 0) {
      return 0;
    }
    return 5315 / ne;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Ne - Den',
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
        resultTitle: 'Count in Den - ',
        result: netoden(ne).toStringAsFixed(2),
      ),
    );
  }
}
