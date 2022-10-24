import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class BrainCard extends StatefulWidget {
  final String hintText;
  final Function onChanged;
  final String resultTitle;
  final String result;
  const BrainCard(
      {Key key, this.hintText, this.onChanged, this.resultTitle, this.result})
      : super(key: key);

  @override
  _BrainCardState createState() => _BrainCardState();
}

class _BrainCardState extends State<BrainCard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Mdi.xmpp,
                  color: Colors.blueGrey,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.blueGrey,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                ),
              ),
              onChanged: widget.onChanged,
              style: TextStyle(
                fontSize: 22,
                color: Colors.brown[500],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xffe2dac6),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.0, 0.0),
                      blurRadius: 15.0,
                      spreadRadius: 3.0,
                      color: Color(0xffb29882),
                    ),
                  ],
                ),
                height: height * .6,
                width: double.infinity,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.resultTitle,
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      AutoSizeText(
                        widget.result,
                        maxLines: 1,
                        maxFontSize: 100,
                        minFontSize: 50,
                        style: TextStyle(color: Colors.brown, fontSize: 100),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            'images/yarn2.png',
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
