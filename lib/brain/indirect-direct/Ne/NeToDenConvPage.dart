import 'package:count_conv_app/widget/brain-card.dart';
import 'package:count_conv_app/widget/custom-app-bar.dart';
import 'package:flutter/material.dart';

class NeToDenConvPage extends StatefulWidget {
  const NeToDenConvPage({ Key key }) : super(key: key);

  @override
  State<NeToDenConvPage> createState() => _NeToDenConvPageState();
}

class _NeToDenConvPageState extends State<NeToDenConvPage> {
   double ne = 0;
  double netoden(ne) {
    if (ne == 0) {
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
          title: 'Ne - Den',
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
        resultTitle: 'Count in Den - ',
        result: netoden(ne).toStringAsFixed(2),
      ),
    );
 
  }
}