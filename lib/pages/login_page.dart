import 'package:flutter/material.dart';
import 'package:thrifty/auth/auth_service.dart';
import 'package:thrifty/components/my_button.dart';
import 'package:thrifty/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  // tap to go to register page
  final void Function()? onTap;

  LoginPage({super.key,
  required this.onTap});

  //login method
  void login(BuildContext context) async{
    //auth service
    final authService = AuthService();
    
    //try login
    try{
      await authService.signInWithEmailAndPassword(_emailController.text, _passController.text, );
    }catch(e){
      showDialog(context: context, builder: (context) => AlertDialog(
        title: Text(e.toString()), ));
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

            const SizedBox(height: 25),

            // login button
            MyButton(text: "Login", onTap: () => login(context)),

            const SizedBox(height: 25),

            // register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
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
