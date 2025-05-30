import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thrifty/auth/auth_gate.dart';
import 'package:thrifty/firebase_options.dart';
import 'package:thrifty/pages/login_page.dart';
import 'package:thrifty/pages/register_page.dart';
import 'package:thrifty/themes/dark_mode.dart';
import 'package:thrifty/themes/light_mode.dart';

import 'auth/login_or_register.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightMode,
      darkTheme: darkMode,
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
    );
  }
}

