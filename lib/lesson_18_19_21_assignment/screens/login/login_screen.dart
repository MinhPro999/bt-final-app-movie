import 'package:flutter/material.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/login/widgets/app_icon_section.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/login/widgets/forgot_password_section.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/login/widgets/login_button_section.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/login/widgets/other_sign_in_method_section.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/login/widgets/username_password_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          print('On Pressed');
          FocusScope.of(context).unfocus();
        },
        behavior: HitTestBehavior
            .opaque, // Ensure taps on the empty space are registered
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 36),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 45),
                    child: AppIconSection(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 43),
                    child: Column(
                      children: [
                        UsernamePasswordSection(),
                        ForgotPasswordSection(),
                        LoginButtonSection(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  OtherSignInMethodSection()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
