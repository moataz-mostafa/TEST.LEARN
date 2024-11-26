import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testlearn/features/splash/presntation/widgets/splash_boody.dart';

void main() {
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const SplashBody(),
    );
  }
}
