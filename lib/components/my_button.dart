import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key,});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Center(
        child: Text("Button"),
      ),
    );
  }
}
