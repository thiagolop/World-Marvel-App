import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelapk01/core/models/marvel_model_series.dart';

class SeriesPage extends StatelessWidget {
  const SeriesPage({Key? key, required this.series}) : super(key: key);
  final ResultsSeries series;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Text(series.title, style: GoogleFonts.lato(color: Colors.white, fontSize: 26, fontStyle: FontStyle.italic)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Stack(children: [
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
            child: Column(children: [
              CachedNetworkImage(
                imageUrl: '${series.thumbnail.path}.${series.thumbnail.extension}',
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
              Text(series.title, style: GoogleFonts.lato(color: Colors.white, fontSize: 26, fontStyle: FontStyle.italic)),
              const SizedBox(height: 20),
              Text('Description: ${series.description}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
              const SizedBox(height: 20),
              Text('Start: ${series.startYear}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
              const SizedBox(height: 20),
              Text('End: ${series.endYear}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
              const SizedBox(height: 20),
              Text('Rating: ${series.rating}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
              const SizedBox(height: 20),
              Text('Type: ${series.type}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
              const SizedBox(height: 20),
              Text('Modified: ${series.modified.substring(0, 10)}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
              const SizedBox(height: 20),
              Text('Comics: ${series.comics.available}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
            ]),
          ),
        ),
      ]),
    );
  }
}
