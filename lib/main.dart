import 'package:flutter/material.dart';
import 'package:marvelapk01/core/routes/marvel_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: 'Marvel World',
      home: const MarvelRoute(),
    );
  }
}
