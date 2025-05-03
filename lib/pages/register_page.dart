import 'dart:core';

import 'package:flutter/material.dart';
import 'package:thrifty/auth/auth_service.dart';
import 'package:thrifty/components/my_button.dart';
import 'package:thrifty/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confPassController = TextEditingController();

  // tap to go to the login page
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  // register method
  void register(BuildContext context) {
    final _auth = AuthService();

    // pass match --->creating user
    if (_passController.text == _confPassController.text) {
      try {
        _auth.signUpWithEmailAndPassword(
          _emailController.text,
          _passController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(
                  title: Text(e.toString())
              ),
        );
      }
    }
    else {
      showDialog(
        context: context,
        builder: (context) =>
        const AlertDialog(
            title: Text("Pass don't match")
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock,
              size: 66,
              color: Theme.of(context).colorScheme.primary,
            ),
            // message: welcome back
            const SizedBox(height: 50),

            Text(
              "Let's create an account!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // email field
            MyTextfield(
              hintText: "Email",
              obscureText: false,
              controller: _emailController,
            ),

            const SizedBox(height: 10),

            // password field
            MyTextfield(
              hintText: "Password",
              obscureText: true,
              controller: _passController,
            ),

            const SizedBox(height: 10),

            // confirm password field
            MyTextfield(
              hintText: "Confirm Password",
              obscureText: true,
              controller: _confPassController,
            ),

            const SizedBox(height: 25),

            // login button
            MyButton(text: "Register", onTap: () => register(context)),

            const SizedBox(height: 25),

            // register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
