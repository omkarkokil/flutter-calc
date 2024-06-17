import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            color: Colors.deepOrange,
            child: const Center(
                child: Text(
              "Hello, Flutter!",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ))));
  }
}
