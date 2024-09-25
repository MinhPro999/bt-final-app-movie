import 'package:flutter/material.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/login/login_screen.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/theme/my_theme.dart';
import 'package:flutter_learning/lesson_19/navigator_demo/screens/not_found_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.darkTheme(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const LoginScreen());
          default:
            return MaterialPageRoute(builder: (_) => const NotFoundPage());
        }
      },
      initialRoute: '/',
    );
  }
}
