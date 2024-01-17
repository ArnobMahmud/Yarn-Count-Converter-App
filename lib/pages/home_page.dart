import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeee3dd),
      appBar: AppBar(
        backgroundColor: const Color(0xffeee3dd),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.ac_unit,
              size: 26,
              color: Color.fromARGB(255, 87, 111, 122),
            ),
            onPressed: () {},
          )
        ],
        title: const Text(
          'Yarn Count Converter',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 80, 122, 143),
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'images/seam.png',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Text(
                'In the textile industry, the yarn count is used to express how fine or coarse (or thin or thick) the yarn is. We use the English count numbering system, which is part of a larger group known as indirect counting systems.',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 125, 100, 117),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ('/convpage'));
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 0.0),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                        color: Color(0xffcac1bc),
                      ),
                    ],
                    color: Color(0xff38393f),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xfff6cefc),
                      ),
                    ),
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