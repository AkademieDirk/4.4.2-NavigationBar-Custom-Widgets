import 'package:flutter/material.dart';
import 'package:navigation_custom_widgets/likes.dart';
import 'package:navigation_custom_widgets/news.dart';
import 'package:navigation_custom_widgets/profile.dart';

void main() {
  runApp(const AppHome());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(child: Text("Homescreen")),
        ),
      ),
    );
  }
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;
  List<Widget> myscreens = [
    const NewsApp(),
    const LikeApp(),
    const ProfileApp(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Titel"),
            actions: const [],
            backgroundColor: Colors.green,
          ),
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            selectedIndex: currentIndex,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.newspaper), label: "News"),
              NavigationDestination(
                  icon: Icon(Icons.heart_broken), label: "Likes"),
              NavigationDestination(
                  icon: Icon(Icons.photo_camera_front_outlined),
                  label: "Profile")
            ],
          ),
          body: Center(
            child: myscreens[currentIndex],
          )),
    );
  }
}
