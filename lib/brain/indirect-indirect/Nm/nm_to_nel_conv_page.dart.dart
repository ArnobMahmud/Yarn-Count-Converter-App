import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NmToNeLConvPage extends StatefulWidget {
  const NmToNeLConvPage({super.key});

  @override
  State<NmToNeLConvPage> createState() => _NmToNeLConvPageState();
}

class _NmToNeLConvPageState extends State<NmToNeLConvPage> {
  double nm = 0;
  double nmtonel(nm) {
    if (nm <= 0) {
      return 0;
    }
    return 1.650 * nm;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Nm - NeL',
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
        resultTitle: 'Count in NeL - ',
        result: nmtonel(nm).toStringAsFixed(2),
      ),
    );
  }
}
