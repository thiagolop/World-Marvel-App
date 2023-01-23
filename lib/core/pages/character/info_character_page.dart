import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/marvel_model.dart';

class InfoCharacterPage extends StatelessWidget {
  const InfoCharacterPage({Key? key, required this.character}) : super(key: key);
  final Character character;

  @override
  Widget build(BuildContext context) {
    String description = character.description;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(character.name, style: GoogleFonts.lato(color: Colors.white, fontSize: 32, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
      ),
      body: Stack(
        children: [
          const Positioned.fill(
            child: Image(
              image: AssetImage('assets/FundoPreto.webp'),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 170,
            bottom: 440,
            child: Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage('${character.thumbnail.path}.${character.thumbnail.extension}'),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 10,
            right: 10,
            bottom: 10,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Description',
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
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Powered by Marvel. © 2023 MARVEL',
                style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//  Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                     child: Column(
//                       children: [
//                         Text(
//                           'Comics:  ${character.comics.available}',
//                           style: GoogleFonts.lato(color: Colors.white, fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           'Series:  ${character.series.available}',
//                           style: GoogleFonts.lato(color: Colors.white, fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           'Stories:  ${character.stories.available}',
//                           style: GoogleFonts.lato(color: Colors.white, fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 10),
//                         Text(
//                           'Events:  ${character.events.available}',
//                           style: GoogleFonts.lato(color: Colors.white, fontSize: 24, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   ),