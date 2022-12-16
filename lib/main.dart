import 'package:flutter/material.dart';
import 'package:untitled/common/theme/dark_theme.dart';
import 'package:untitled/common/theme/light_theme.dart';
import 'package:untitled/feature/auth/pages/login_page.dart';
import 'package:untitled/feature/auth/pages/user_info_page.dart';
import 'package:untitled/feature/auth/pages/verification_page.dart';
import 'package:untitled/feature/welcome/pages/welcome_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Me',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const UserInfoPage(),
    );
  }
}
