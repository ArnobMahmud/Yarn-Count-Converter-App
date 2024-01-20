import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    final height = MediaQuery.of(context).size.height;
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
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 10,
                bottom: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      '''Yarn Count is an integral part of the Textile industry. The spinning mills or weaving mills can not run without it as product costing fully depends on it.''',
                      style: GoogleFonts.lato(
                        color: Colors.brown[400],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/thread.png',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height:  height * .6,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffb69e87),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListView(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 0,
                  right: 10,
                  bottom: 20,
                ),
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
        ],
      ),
    );
  }
}
