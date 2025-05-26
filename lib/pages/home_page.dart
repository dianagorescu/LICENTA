import 'package:flutter/material.dart';
import 'package:thrifty/auth/auth_service.dart';
import 'package:arcgis_map_sdk/arcgis_map_sdk.dart';
import '../components/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),

        // actions: [
        //   // logout button
        //   IconButton(onPressed: logout, icon: Icon(Icons.logout))
        // ],
      ),
      drawer: MyDrawer(),

      body: ArcgisMap(
        apiKey: 'AAPTxy8BH1VEsoebNVZXo8HurNNdtZiU82xWUzYLPb7EktsQl_JcOdzgsJtZDephAvIhplMB4PQTWSaU4tGgQhsL4u6bAO6Hp_pE8hzL0Ko7jbY9o98fU61l_j7VXlLRDf08Y0PheuGHZtJdT4bJcAKLrP5dqPCFsZesVv-S7BH1OaZnV-_IsKRdxJdxZI3RVw7XGZ0xvERxTi57udW9oIg3VzF-oY1Oy4ybqDshlMgejQI.AT1_a5lV7G2k', // Înlocuiește cu cheia ta de API
        initialCenter: const LatLng(44.4268, 26.1025), // Coordonate România
        zoom: 12,
        mapStyle: MapStyle.twoD,
        basemap: BaseMap.arcgisStreets,
        onMapCreated: (controller) async {
          // poți interacționa cu hartă aici
        },
      ),
    );
  }
}
