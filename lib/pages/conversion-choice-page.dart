import 'package:count_conv_app/widget/method-card.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class ConversionChoicePage extends StatefulWidget {
  const ConversionChoicePage({Key key}) : super(key: key);

  @override
  _ConversionChoicePageState createState() => _ConversionChoicePageState();
}

class _ConversionChoicePageState extends State<ConversionChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Mdi.fileQuestion,
              color: Color(0xffa58d7f),
              size: 35,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Color(0xffdccdbc),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Color(0xffa58d7f),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Method',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0xffa58d7f),
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Container(
                    child: Text(
                      'Yarn Count is an integral part of the Textile industry. The spinning mills or weaving mills can not run without it as product costing fully depends on it.',
                      style: TextStyle(color: Colors.brown[400], fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'images/thread.png',
                  height: 130,
                  width: 130,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffa58d7d),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MethodCard(
                    onTap: () {
                      Navigator.pushNamed(context, '/indirectmethod');
                    },
                    title: 'Indirect - Direct',
                    subTitle: 'Ne, Nm, NeS, NeW, NeL - Tex, Den, lbs/spy',
                    imgData: 'images/yarn5.png',
                  ),
                  MethodCard(
                    onTap: () {
                      Navigator.pushNamed(context, '/directmethod');
                    },
                    title: 'Direct - Indirect',
                    subTitle: 'Tex, Den, lbs/spy - Ne, Nm, NeS, NeW, NeL',
                    imgData: 'images/yarn6.png',
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
