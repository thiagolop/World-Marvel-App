import 'package:flutter/material.dart';
import 'package:marvelapk01/core/routes/marvel_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MarvelRoute(),
    );
  }
}
