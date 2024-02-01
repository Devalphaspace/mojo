import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mojo_food_ordering_app/Screens/OnboardingScreens/onboarding_screen.dart';

void main() {
  runApp(const Mojo());
}

class Mojo extends StatelessWidget {
  const Mojo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mojo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}
