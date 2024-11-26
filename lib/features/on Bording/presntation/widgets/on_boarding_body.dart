import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testlearn/core/utils/size_configration.dart';
import 'package:testlearn/core/widgets/custom_button.dart';
import 'package:testlearn/features/Auth/presentation/pages/login/login_view.dart';
import 'package:testlearn/features/on%20Bording/presntation/widgets/custom_indcator.dart';
import 'package:testlearn/features/on%20Bording/presntation/widgets/custom_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  _OnBoardingViewBodyState createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 24,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: TextButton(

        
                    onPressed: () {
    Get.offAll(() => const LoginView(), 
      transition: Transition.rightToLeft, 
      duration: const Duration(milliseconds: 500)
    );
  },
             child: Text('Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff898989),
              ),
              textAlign: TextAlign.left,),
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomGeneralButton(
               onTap: () {
    if (pageController?.hasClients == true) {
      final currentPage = pageController?.page?.round() ?? 0;
      if (currentPage < 2) {
        pageController?.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      } else if (currentPage == 2) {
        Get.offAll(
          () => const LoginView(),
          transition: Transition.rightToLeft,
          duration: const Duration(milliseconds: 500),
        );
      }
    }
  },
  text: pageController?.hasClients == true && (pageController?.page?.round() ?? 0) == 2
      ? 'Get started'
      : 'Next',
            )),
      ],
    );
  }
}