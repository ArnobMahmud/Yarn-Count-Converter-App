import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class NeToTexConvPage extends StatefulWidget {
  const NeToTexConvPage({Key key}) : super(key: key);

  @override
  _NeToTexConvPageState createState() => _NeToTexConvPageState();
}

class _NeToTexConvPageState extends State<NeToTexConvPage> {

  double ne = 0;
  double netotex(ne) {
    if (ne <= 0) {
      return 0;
    }
    return 590.5 / ne;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Ne - Tex',
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
        resultTitle: 'Count in Tex - ',
        result: netotex(ne).toStringAsFixed(2),
      ),
    );
  }
}
