import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:murray/views/screens/splash_screen/splash_screen.dart';

class SplashCubit extends Cubit<bool> {
  SplashCubit() : super(false);

  void startSplash() {
    Future.delayed(Duration(seconds: 3), () {
      emit(true);
    });
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..startSplash(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc Splash Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}