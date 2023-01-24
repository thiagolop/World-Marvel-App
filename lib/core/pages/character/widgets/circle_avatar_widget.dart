import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../models/marvel_model_characters.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({Key? key, required this.character}) : super(key: key);
  final Character character;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 80,
      right: 80,
      bottom: 500,
      child: Center(
          child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: const Border.fromBorderSide(BorderSide(color: Colors.red, width: 2)),
              image: DecorationImage(image: CachedNetworkImageProvider('${character.thumbnail.path}.${character.thumbnail.extension}'), fit: BoxFit.scaleDown),
            ),
          )
        ],
      )),
    );
  }
}
