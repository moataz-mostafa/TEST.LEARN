import 'package:flutter/material.dart';
import 'package:testlearn/core/widgets/custom_button.dart';
import 'package:testlearn/core/widgets/space_widget.dart';
import 'package:testlearn/features/Auth/presentation/pages/compelet_information/widget/complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpace(5),
              CompleteInfoItem(
                text: 'Enter your name',
              ),
              VerticalSpace(2),
              CompleteInfoItem(
                text: 'Enter your phone number',
              ),
              VerticalSpace(2),
              CompleteInfoItem(
                maxLines: 5,
                text: 'Enter your address',
              ),
              VerticalSpace(5),
              Align(
                alignment: Alignment.center,
                child: CustomGeneralButton(
                  text: 'Login',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
