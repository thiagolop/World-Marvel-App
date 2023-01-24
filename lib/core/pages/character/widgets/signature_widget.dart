import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignatureWidget extends StatelessWidget {
  const SignatureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          'Powered by Marvel. © 2023 MARVEL',
          style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
