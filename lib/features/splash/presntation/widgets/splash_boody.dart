import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testlearn/core/utils/size_configration.dart';
import 'package:testlearn/features/on%20Bording/presntation/on_bording_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);

    animationController?.forward();

    goTONextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: fadingAnimation!,
              child: const Text(
                'Fruit Market',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 51,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Image.asset('assets/images/splash_view_image.png'),
          ],
        ),
      ),
    );
  }

  void goTONextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnBordingView(), transition: Transition.fade);
    });
  }
}
