import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeveloperPage extends StatelessWidget {
  const DeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2dfd2),
      appBar: AppBar(
      scrolledUnderElevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 25,
          ),
        ),
        backgroundColor: const Color(0xffe2dfd2),
        title: Text(
          'Developer',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 41, 51, 104),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(
                  'images/logo.png',
                  height: 150,
                  width: 150,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Powered by GrooveLinx',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 65, 70, 99),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color(0xffcfbaba),
              ),
              child: Text(
                'License',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 41, 51, 104),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color(0xffcfbaba),
              ),
              child: Text(
                '''MIT License\n\nCopyright (c) 2023 Arnob Mahmud\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
                \n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
                \n\nTHE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.''',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 41, 51, 104),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}