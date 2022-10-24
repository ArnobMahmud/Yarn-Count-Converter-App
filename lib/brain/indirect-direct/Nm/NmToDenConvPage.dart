import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class NmToDenConvPage extends StatefulWidget {
  const NmToDenConvPage({Key key}) : super(key: key);

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
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
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
