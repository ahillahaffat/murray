import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:murray/views/screens/onboarding/onboarding3.dart';

abstract class OnboardingEvent {}
class NextPageEvent extends OnboardingEvent {}

class OnboardingState {
  final int currentPage;
  OnboardingState(this.currentPage);
}

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState(0)) {
    on<NextPageEvent>((event, emit) {
      emit(OnboardingState(state.currentPage + 1));
    });
  }
}

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => OnboardingBloc(),
      child: Scaffold(
        body: BlocBuilder<OnboardingBloc, OnboardingState>(
          builder: (context, state) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF2A9D8F),
                        Color(0xFF264653),
                      ],
                    ),
                  ),
                ),

                // Main content
                SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.05,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kita Semua',
                              style: GoogleFonts.poppins(
                                fontSize: size.width * 0.08,
                                fontWeight: FontWeight.w900,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),
                            RichText(
                              text: TextSpan(
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.045,
                                  color: Colors.black54,
                                ),
                                children: [
                                  TextSpan(text: 'Pasti Bisa '),
                                  TextSpan(
                                    text: '#LestarikanBumi',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed odio consequat, volutpat tellus in, viverra lacus.',
                              style: TextStyle(
                                fontSize: size.width * 0.035, 
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.05),
                        child: SizedBox(
                          height: size.height * 0.06,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => OnboardingScreenTri(),
                              //   ),
                              // );
                              context.read<OnboardingBloc>().add(NextPageEvent());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF349385),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.12,
                                vertical: size.height * 0.015,
                              ),
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: size.width * 0.08,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                    ],
                  ),
                ),

                Positioned(
                  bottom: -50, 
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/boarding.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
