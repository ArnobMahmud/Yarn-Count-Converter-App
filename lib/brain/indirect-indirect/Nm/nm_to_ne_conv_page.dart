import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NmToNeConvPage extends StatefulWidget {
  const NmToNeConvPage({super.key});

  @override
  State<NmToNeConvPage> createState() => _NmToNeConvPageState();
}

class _NmToNeConvPageState extends State<NmToNeConvPage> {
  double nm = 0;
  double nmtone(nm) {
    if (nm <= 0) {
      return 0;
    }
    return 0.59 * nm;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Nm - Ne',
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
        resultTitle: 'Count in Ne - ',
        result: nmtone(nm).toStringAsFixed(2),
      ),
    );
  }
}
