import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NmToNeWConvPage extends StatefulWidget {
  const NmToNeWConvPage({super.key});

  @override
  State<NmToNeWConvPage> createState() => _NmToNeWConvPageState();
}

class _NmToNeWConvPageState extends State<NmToNeWConvPage> {
  double nm = 0;
  double nmtonew(nm) {
    if (nm <= 0) {
      return 0;
    }
    return 0.886 * nm;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Nm - NeW',
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
        resultTitle: 'Count in NeW - ',
        result: nmtonew(nm).toStringAsFixed(2),
      ),
    );
  }
}
