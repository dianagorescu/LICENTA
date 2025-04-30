import 'package:flutter/material.dart';
import 'package:thrifty/auth/auth_service.dart';

import '../components/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        // actions: [
        //   // logout button
        //   IconButton(onPressed: logout, icon: Icon(Icons.logout))
        // ],

      ),
      drawer: MyDrawer(),
    );
  }
}
