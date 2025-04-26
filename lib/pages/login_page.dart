import 'package:flutter/material.dart';
import 'package:thrifty/components/my_button.dart';
import 'package:thrifty/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  LoginPage({super.key});

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
              Icons.message,
              size: 66,
              color: Theme.of(context).colorScheme.primary,
            ),
            // message: welcome back
            const SizedBox(height: 50),

            Text(
              "Welcome back",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // email field
            MyTextfield(hintText: "Email",
              obscureText: false,
            controller: _emailController,),

            const SizedBox(height: 10),

            // password field
            MyTextfield(hintText: "Password",
              obscureText: true,
              controller: _passController,),

            const SizedBox(height: 25),

            // login button
            MyButton(),

            // register now
          ],
        ),
      ),
    );
  }
}
