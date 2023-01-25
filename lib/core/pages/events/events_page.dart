import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelapk01/core/models/marvel_moder_events.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key, required this.events}) : super(key: key);
  final ResultsEvents events;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(events.title.toString(), style: GoogleFonts.lato(color: Colors.white, fontSize: 26, fontStyle: FontStyle.italic)),
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
                    imageUrl: '${events.thumbnail?.path}.${events.thumbnail?.extension}',
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
                  Text(events.title.toString(), style: GoogleFonts.lato(color: Colors.white, fontSize: 26, fontStyle: FontStyle.italic)),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text('Description: ${events.description}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
                  ),
                  const SizedBox(height: 20),
                  Text('Start: ${events.start?.substring(0, 10)}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
                  const SizedBox(height: 20),
                  Text('End: ${events.end?.substring(0, 10)}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
                  const SizedBox(height: 20),
                  Text('Next: ${events.next}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
                  const SizedBox(height: 20),
                  Text('Previous: ${events.previous}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
