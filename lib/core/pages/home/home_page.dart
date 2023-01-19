import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelapk01/core/models/marvel_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.marvel}) : super(key: key);
  final ModelMarvel? marvel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Marvel', style: GoogleFonts.lato(color: Colors.black, fontSize: 32, fontStyle: FontStyle.italic)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.black))],
      ),
      backgroundColor: Colors.white,
      body: GridView.count(crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 8, physics: const BouncingScrollPhysics(), children: [
        for (var i = 0; i < widget.marvel!.data.results.length; i++)
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[200],
              image: DecorationImage(
                image: NetworkImage('${widget.marvel!.data.results[i].thumbnail.path}.${widget.marvel!.data.results[i].thumbnail.extension}'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                      color: Colors.black54,
                    ),
                    child: Text(
                      widget.marvel!.data.results[i].name,
                      style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ]),
    );
  }
}
