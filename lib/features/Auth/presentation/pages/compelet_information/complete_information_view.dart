import 'package:flutter/material.dart';
import 'package:testlearn/features/Auth/presentation/pages/compelet_information/widget/complete_information_body.dart';

class CompleteInformationView extends StatelessWidget {
  const CompleteInformationView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : CompleteInformationBody(),
    );
  }
}