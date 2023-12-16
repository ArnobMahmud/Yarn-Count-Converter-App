import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NmToLbsSpyConvPage extends StatefulWidget {
  const NmToLbsSpyConvPage({super.key});

  @override
  State<NmToLbsSpyConvPage> createState() => _NmToLbsSpyConvPageState();
}

class _NmToLbsSpyConvPageState extends State<NmToLbsSpyConvPage> {
  double nm = 0;
  double nmtolbsspy(nm) {
    if (nm <= 0) {
      return 0;
    }
    return 29.02 / nm;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Nm - lbs/spy',
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
        resultTitle: 'Count in lbs/spy - ',
        result: nmtolbsspy(nm).toStringAsFixed(2),
      ),
    );
  }
}
