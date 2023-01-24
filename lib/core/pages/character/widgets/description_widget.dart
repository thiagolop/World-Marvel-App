import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/marvel_model_characters.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({Key? key, required this.character}) : super(key: key);
  final Character character;

  @override
  Widget build(BuildContext context) {
    String description = character.description;
    return Column(
      children: [
        Center(
          child: Text(
            'Description of ${character.name}',
            style: GoogleFonts.lato(color: Colors.white, fontSize: 34, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        if (description == '')
          Text(
            'No description available',
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
        if (description != '')
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  character.modified.substring(0, 10),
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
