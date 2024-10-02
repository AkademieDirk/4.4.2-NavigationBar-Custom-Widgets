import 'package:flutter/material.dart';

class LikeApp extends StatelessWidget {
  const LikeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SafeArea(
              child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Likes",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 200,
                  child: Text("Hier findest du deine gelikten Nachrichten")),
            ],
          )),
        ),
      ),
    );
  }
}
