import 'package:flutter/material.dart';

class HomeError extends StatelessWidget {
  const HomeError({Key? key, required this.erromessage}) : super(key: key);
  final String erromessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(child: Text(erromessage)),
      ),
    );
  }
}
