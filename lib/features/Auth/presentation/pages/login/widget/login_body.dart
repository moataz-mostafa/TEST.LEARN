import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:testlearn/core/utils/size_configration.dart';
import 'package:testlearn/core/widgets/icon_button.dart';
import 'package:testlearn/core/widgets/space_widget.dart';
import 'package:testlearn/features/Auth/presentation/pages/compelet_information/complete_information_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(5),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset('assets/images/logo.png'),
        ),
        const Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color: Color(0xff69a03a),
            ),
            children: [
              TextSpan(
                text: 'F',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'ruit Market',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            const Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CIconButton(
                  color: Color(0xFFdb3236),
                  iconData: FontAwesomeIcons.googlePlusG,
                  text: 'Log in with ',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CIconButton(
                  onTap: () {
                    Get.to(() => const CompleteInformationView(),
                        duration: const Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  color: const Color.fromARGB(255, 10, 80, 187),
                  iconData: FontAwesomeIcons.facebookF,
                  text: 'Log in with ',
                ),
              ),
            )
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}