import 'package:flutter/material.dart';

import '../../../models/marvel_model_characters.dart';

class ComicsWidget extends StatelessWidget {
  const ComicsWidget({Key? key, required this.character}) : super(key: key);
  final Character character;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(character.id.toString())
      ],
    );
  }
}
