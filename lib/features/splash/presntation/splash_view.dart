import 'package:flutter/material.dart';
import 'package:testlearn/core/constans.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMainColor,
      body: SplashView(),
    );
  }
}
