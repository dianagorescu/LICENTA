import 'package:flutter/material.dart';
import 'package:thrifty/pages/login_page.dart';
import 'package:thrifty/pages/register_page.dart';

class LoginOrRegisterPage extends StatefulWidget{
  const LoginOrRegisterPage({super.key});


  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegisterPage> {

  // initially, show the login page
  bool showLoginPage = true;

  // a toggle between login and register page
  void tooglePages() {
    setState(() {
      showLoginPage = !showLoginPage;

    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: tooglePages,
      );
    }else{
      return RegisterPage(
        onTap: tooglePages,
      );
    }
  }
}