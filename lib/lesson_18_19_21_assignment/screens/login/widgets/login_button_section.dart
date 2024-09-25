import 'package:flutter/material.dart';

class LoginButtonSection extends StatelessWidget {
  const LoginButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 8)),
            child: const Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            )));
  }
}
