import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class BrainCard extends StatefulWidget {
  final String? hintText;
  final Function(String)? onChanged;
  final String? resultTitle;
  final String? result;

  const BrainCard({
    super.key,
    this.hintText,
    this.onChanged,
    this.resultTitle,
    this.result,
  });

  @override
  State<BrainCard> createState() => _BrainCardState();
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
                prefixIcon: const Icon(
                  Mdi.xmpp,
                  color: Colors.blueGrey,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2,
                    color: Colors.blueGrey,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: widget.hintText,
                hintStyle: const TextStyle(
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
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xffe2dac6),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
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
                        widget.resultTitle!,
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      AutoSizeText(
                        widget.result!,
                        maxLines: 1,
                        maxFontSize: 100,
                        minFontSize: 50,
                        style:
                            const TextStyle(color: Colors.brown, fontSize: 100),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
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
