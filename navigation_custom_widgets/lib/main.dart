import 'package:flutter/material.dart';
import 'package:navigation_custom_widgets/Likes.dart';
import 'package:navigation_custom_widgets/Profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.newspaper), label: "News"),
            NavigationDestination(
                icon: Icon(Icons.heart_broken), label: "Likes"),
            NavigationDestination(
                icon: Icon(Icons.photo_camera_front_outlined), label: "Profile")
          ],
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Likes",
                style: TextStyle(fontSize: 20),
              ),
              Icon(Icons.table_chart_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
