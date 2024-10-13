import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murray/main.dart';
import 'package:murray/views/screens/onboarding/onboarding1.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, bool>(
      listener: (context, state) {
        if (state) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => OnboardingScreenOne()),
          );
        }
      },
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/card2.jpeg',
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.grey.withOpacity(0.0),
                    Colors.black.withOpacity(0.5),
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      'BERINOVASI',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'WUJUDKAN TEKNOLOGI YANG DAPAT MENGURANGI\nDAMPAK BURUK BAGI LINGKUNGAN',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '#CerdasKembangkanHalBaru',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}