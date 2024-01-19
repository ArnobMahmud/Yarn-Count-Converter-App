import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
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
                hintStyle: GoogleFonts.lato(
                  color: Colors.brown,
                  fontSize: 18,
                ),
              ),
              onChanged: widget.onChanged,
              style: TextStyle(
                fontSize: 18,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.resultTitle!,
                        style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        widget.result!,
                        style: GoogleFonts.lato(
                          color: Colors.brown,
                          fontSize: 100,
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            'images/yarn2.png',
                            height: 80,
                            width: 80,
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
