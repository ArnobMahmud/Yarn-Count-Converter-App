import 'package:flutter/material.dart';
import '../../../widget/brain_card.dart';
import '../../../widget/custom_app_bar.dart';

class NmToDenConvPage extends StatefulWidget {
  const NmToDenConvPage({super.key});

  @override
  State<NmToDenConvPage> createState() => _NmToDenConvPageState();
}

class _NmToDenConvPageState extends State<NmToDenConvPage> {
  double nm = 0;
  double nmtoden(nm) {
    if (nm <= 0) {
      return 0;
    }
    return 9000 / nm;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Nm - Den',
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
        resultTitle: 'Count in Den - ',
        result: nmtoden(nm).toStringAsFixed(2),
      ),
    );
  }
}
