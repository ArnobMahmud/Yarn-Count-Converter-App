import 'package:count_conv_app/widget/segment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class IndirectMethod extends StatelessWidget {
  const IndirectMethod({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdccdbc),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffdccdbc),
        title: Text(
          'Indirect to Direct count',
          style: TextStyle(
              fontSize: 24,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500,
              letterSpacing: 1),
        ),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SegmentChoice(
              title: 'Ne - Tex',
              subTitle:
                  'Ne (Number english) is an indirect count system & Tex is a direct count system.',
              onTap: () {},
            ),
            SegmentChoice(
              title: 'Ne - Den',
              subTitle:
                  'Ne (Number english) is an indirect count system & Den (Denier) is a direct count system.',
              onTap: () {},
            ),
            SegmentChoice(
              title: 'Ne - Tex',
              subTitle:
                  'Ne (Number english) is an indirect count system & Tex is a direct count system.',
              onTap: () {},
            ),
            SegmentChoice(
              title: 'Ne - Tex',
              subTitle:
                  'Ne (Number english) is an indirect count system & Tex is a direct count system.',
              onTap: () {},
            ),
            SegmentChoice(
              title: 'Ne - Tex',
              subTitle:
                  'Ne (Number english) is an indirect count system & Tex is a direct count system.',
              onTap: () {},
            ),
            SegmentChoice(
              title: 'Ne - Tex',
              subTitle:
                  'Ne (Number english) is an indirect count system & Tex is a direct count system.',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
