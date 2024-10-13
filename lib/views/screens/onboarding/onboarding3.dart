import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:murray/views/screens/onboarding/onboarding2.dart';

class OnboardingScreenTri extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreenTri> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.5,
            colors: [
              Color(0xFFE0CD88),
              Color(0xFFDFCB85),
              Color(0xFFDAC37C),
              Color(0xFFD3B56C),
              Color(0xFFC9A356),
              Color(0xFFBB8B3A),
              Color(0xFFBA8837),
              Color(0xFFAA7120),
            ],
            stops: [0.0, 0.2, 0.35, 0.47, 0.59, 0.7, 0.71, 0.99],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/1b.png', 
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/onboarding.png', 
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TRASH',
                    style: GoogleFonts.poppins(
                      fontSize: size.width * 0.08, 
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF466B4A),
                    ),
                  ),
                  Text(
                    'BACK',
                    style: GoogleFonts.poppins(
                      fontSize: size.width * 0.08,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF466B4A),
                    ),
                  ),
                  Text(
                    'FOR',
                    style: GoogleFonts.poppins(
                      fontSize: size.width * 0.08,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF466B4A),
                    ),
                  ),
                  Text(
                    'LIFE',
                    style: GoogleFonts.poppins(
                      fontSize: size.width * 0.08,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF466B4A),
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  ElevatedButton(
                    onPressed: () {
                      // Navigasi ke OnboardingScreen2
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnboardingScreen2(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF349385),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.12,
                        vertical: size.height * 0.01,
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: size.width * 0.08,
                    ),
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
