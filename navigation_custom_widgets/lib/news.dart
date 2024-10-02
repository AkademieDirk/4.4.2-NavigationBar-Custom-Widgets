import 'package:flutter/material.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
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
