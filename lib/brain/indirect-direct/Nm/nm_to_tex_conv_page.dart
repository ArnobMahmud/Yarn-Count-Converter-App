import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NmToTexConvPage extends StatefulWidget {
  const NmToTexConvPage({super.key});

  @override
  State<NmToTexConvPage> createState() => _NmToTexConvPageState();
}

class _NmToTexConvPageState extends State<NmToTexConvPage> {
  double nm = 0;
  double nmtotex(nm) {
    if (nm <= 0) {
      return 0;
    }
    return 1000 / nm;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Nm - Tex',
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
        resultTitle: 'Count in Tex - ',
        result: nmtotex(nm).toStringAsFixed(2),
      ),
    );
  }
}
