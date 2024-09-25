// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final bool obscureText;
  const CustomTextfield({
    Key? key,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}

class InputItemSection extends StatelessWidget {
  final String title;
  final CustomTextfield textfield;
  const InputItemSection({
    Key? key,
    required this.title,
    required this.textfield,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        textfield
      ],
    );
  }
}

class UsernamePasswordSection extends StatelessWidget {
  const UsernamePasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InputItemSection(
          title: "Username",
          textfield: CustomTextfield(
            hintText: "Enter your username",
            prefixIcon: Icon(Icons.person),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        InputItemSection(
          title: "Password",
          textfield: CustomTextfield(
            hintText: "Enter your password",
            prefixIcon: Icon(Icons.lock),
            obscureText: true,
            suffixIcon:
                IconButton(onPressed: null, icon: Icon(Icons.visibility)),
          ),
        ),
      ],
    );
  }
}
