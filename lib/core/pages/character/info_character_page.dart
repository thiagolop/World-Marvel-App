import 'package:flutter/material.dart';
import '../../models/marvel_model.dart';

class InfoCharacterPage extends StatelessWidget {
  const InfoCharacterPage({Key? key, required this.character}) : super(key: key);
  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(character.name),
      ),
      body: Stack(
        children: const [
          Positioned.fill(
            child: Image(
              image: AssetImage('assets/background3.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
