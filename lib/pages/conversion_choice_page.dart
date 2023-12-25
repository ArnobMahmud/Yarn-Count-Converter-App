import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import '../widget/method_card.dart';

class ConversionChoicePage extends StatefulWidget {
  const ConversionChoicePage({super.key});

  @override
  State<ConversionChoicePage> createState() => _ConversionChoicePageState();
}

class _ConversionChoicePageState extends State<ConversionChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdccdbc),
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Mdi.information,
              color: Color(0xffa58d7f),
              size: 30,
            ),
            onPressed: () {
              Navigator.pushNamed(context, ('/infopage'));
            },
          ),
        ],
        backgroundColor: const Color(0xffdccdbc),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Color(0xffa58d7f),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Transform(
          transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: const Text(
            'Method',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Color(0xffa58d7f),
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 5,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: AutoSizeText(
                    'Yarn Count is an integral part of the Textile industry. The spinning mills or weaving mills can not run without it as product costing fully depends on it.',
                    maxLines: 5,
                    minFontSize: 17,
                    maxFontSize: 19,
                    style: TextStyle(
                      color: Colors.brown[400],
                      fontSize: 19,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
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
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffb69e87),
                borderRadius: BorderRadius.only(
                  //topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  padding: const EdgeInsets.only(top: 30, left: 0, right: 10),
                  scrollDirection: Axis.horizontal,
                  children: [
                    MethodCard(
                      onTap: () {
                        Navigator.pushNamed(context, '/indirectdirectmethod');
                      },
                      title: 'Indirect - Direct',
                      subTitle: 'Ne, Nm, NeS, NeW, NeL - Tex, Den, lbs/spy',
                      imgData: 'images/yarn5.png',
                    ),
                    MethodCard(
                      onTap: () {
                        Navigator.pushNamed(context, '/directindirectmethod');
                      },
                      title: 'Direct - Indirect',
                      subTitle: 'Tex, Den, lbs/spy - Ne, Nm, NeS, NeW, NeL',
                      imgData: 'images/yarn6.png',
                    ),
                    MethodCard(
                      onTap: () {
                        Navigator.pushNamed(context, '/indirectindirectmethod');
                      },
                      title: 'Indirect - Indirect',
                      subTitle: 'Ne, Nm, NeS, NeW, NeL - Ne, Nm, NeS, NeW, NeL',
                      imgData: 'images/yarn7.png',
                    ),
                    MethodCard(
                      onTap: () {
                        Navigator.pushNamed(context, '/directdirectmethod');
                      },
                      title: 'Direct - Direct',
                      subTitle: 'Tex, Den, lbs/spy - Tex, Den, lbs/spy',
                      imgData: 'images/yarn9.png',
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
