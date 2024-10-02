import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Profile",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 40,
              ),
              SizedBox(
                  child: Text(
                "Max Mustermann",
                style: TextStyle(fontSize: 24),
              )),
            ],
          )),
        ),
      ),
    );
  }
}
