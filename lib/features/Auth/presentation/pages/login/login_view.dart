import 'package:flutter/material.dart';
import 'package:testlearn/features/Auth/presentation/pages/login/widget/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody(),
    );
  }
}