import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(
        seconds: 5,
      ),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
    return Scaffold(
      backgroundColor: const Color(0xffece4dc),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'images/yarn2.png',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 50),
            Text(
              'Yarn Count Converter',
              style: GoogleFonts.poppins(
                letterSpacing: .7,
                textStyle: const TextStyle(
                  color: Color(0xff76424e),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Text(
                    'Powered by GrooveLinx',
                    style: GoogleFonts.ubuntu(
                      textStyle: const TextStyle(
                        color: Color(0xff8c8798),
                        fontSize: 18,
                        letterSpacing: 0.4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'version ~ 1.0.0',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 40, 30, 62),
                        fontSize: 16,
                        letterSpacing: 0.1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
