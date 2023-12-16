import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NeSToTexConvPage extends StatefulWidget {
  const NeSToTexConvPage({ super.key });

  @override
  State<NeSToTexConvPage> createState() => _NeSToTexConvPageState();
}

class _NeSToTexConvPageState extends State<NeSToTexConvPage> {
  double neS = 0;
  double nestotex(neS) {
    if (neS == 0) {
      return 0;
    }
    return 1937.5486 / neS;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'NeS - Tex',
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
        resultTitle: 'Count in Tex - ',
        result: nestotex(neS).toStringAsFixed(2),
      ),
    );
  }
}
