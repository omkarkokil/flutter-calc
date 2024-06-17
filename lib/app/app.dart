import 'package:flutter/material.dart';
import 'package:flutter_app/views/homeview.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "Flutter run", home: HomeView());
  }
}
