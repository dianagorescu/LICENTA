import 'package:flutter/material.dart';
import 'package:thrifty/pages/login_page.dart';
import 'package:thrifty/pages/register_page.dart';
import 'package:thrifty/themes/light_mode.dart';

import 'auth/login_or_register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      debugShowCheckedModeBanner: false,
      home: LoginOrRegisterPage(),
    );
  }
}

