import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/marvel_model_comics.dart';

class ComicsPage extends StatelessWidget {
  const ComicsPage({Key? key, required this.comics}) : super(key: key);
  final ResultsComics comics;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Text(comics.titleShort, style: GoogleFonts.lato(color: Colors.white, fontSize: 26, fontStyle: FontStyle.italic)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Positioned.fill(
            child: Image(
              image: AssetImage('assets/screen-6.webp'),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 110,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: '${comics.thumbnail.path}.${comics.thumbnail.extension}',
                    width: 300,
                    height: 350,
                    fit: BoxFit.scaleDown,
                    progressIndicatorBuilder: (context, url, progress) => const Center(
                      child: CircularProgressIndicator(
                        value: null,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                  const SizedBox(height: 20),
                  Text(comics.titleShort, style: GoogleFonts.lato(color: Colors.white, fontSize: 24, fontStyle: FontStyle.italic)),
                  const SizedBox(height: 10),
                  Text('Description: ${comics.description}'.toString(), style: GoogleFonts.lato(color: Colors.white, fontSize: 20)),
                  const SizedBox(height: 10),
                  Text('Price: \$${comics.prices[0].price}', style: GoogleFonts.lato(color: Colors.white, fontSize: 20)),
                  const SizedBox(height: 10),
                  Text('Page Count: ${comics.pageCount}', style: GoogleFonts.lato(color: Colors.white, fontSize: 20)),
                  const SizedBox(height: 10),
                  Text('Format: ${comics.format}', style: GoogleFonts.lato(color: Colors.white, fontSize: 20)),
                  const SizedBox(height: 10),
                  Text('Modified: ${comics.modified.substring(0, 10)}', style: GoogleFonts.lato(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
