import 'package:flutter/material.dart';

import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NmToNeSConvPage extends StatefulWidget {
  const NmToNeSConvPage({super.key});

  @override
  State<NmToNeSConvPage> createState() => _NmToNeSConvPageState();
}

class _NmToNeSConvPageState extends State<NmToNeSConvPage> {
  double nm = 0;
  double nmtones(nm) {
    if (nm <= 0) {
      return 0;
    }
    return 1.94 * nm;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Nm - NeS',
        ),
      ),
      body: BrainCard(
        hintText: 'Count in Nm :',
        onChanged: (value) {
          if (value.isEmpty) {
            setState(
              () => nm = 0,
            );
          } else {
            setState(
              () {
                nm = double.parse(value);
              },
            );
          }
        },
        resultTitle: 'Count in NeS - ',
        result: nmtones(nm).toStringAsFixed(2),
      ),
    );
  }
}
