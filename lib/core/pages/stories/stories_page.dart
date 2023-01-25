import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelapk01/core/models/marvel_model_stories.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({Key? key, required this.stories}) : super(key: key);
  final ResultsStories stories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(stories.title.toString(), style: GoogleFonts.lato(color: Colors.white, fontSize: 26, fontStyle: FontStyle.italic)),
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
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl: '${stories.thumbnail}.${stories.thumbnail}',
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
                Text(stories.title.toString(), style: GoogleFonts.lato(color: Colors.white, fontSize: 26, fontStyle: FontStyle.italic)),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text('Description: ${stories.description}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
                ),
                const SizedBox(height: 20),
                Text('Type: ${stories.type}', style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
                const SizedBox(height: 20),
                Text('Modified: ${stories.modified?.substring(0, 10)}',
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic)),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
