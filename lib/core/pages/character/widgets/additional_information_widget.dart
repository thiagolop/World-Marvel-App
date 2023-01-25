import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdditionalInformationWidget extends StatelessWidget {
  const AdditionalInformationWidget({Key? key, required this.title, required this.description}) : super(key: key);
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(10),
          backgroundBlendMode: BlendMode.plus,
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFB1190E), Color(0xFF000000)],
          ),
        ),
        child: Center(
          child: Text('$title :  ${description == '' ? 'No description available' : description}',
              style: GoogleFonts.lato(color: Colors.white, fontSize: 28, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
