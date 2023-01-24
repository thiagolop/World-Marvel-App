import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelapk01/core/pages/comics/widgets/list_comics_widget.dart';

import '../../controllers/comics_controller.dart';

class ComicsPage extends StatefulWidget {
  const ComicsPage({Key? key, required this.characterID}) : super(key: key);
  final int characterID;

  @override
  State<ComicsPage> createState() => _ComicsPageState();
}

class _ComicsPageState extends State<ComicsPage> {
  final ComicsController comicsController = ComicsController();
  @override
  void initState() {
    super.initState();
    comicsController.loadCurrentComics(id: widget.characterID.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Marvel', style: GoogleFonts.lato(color: Colors.white, fontSize: 32, fontStyle: FontStyle.italic)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Positioned.fill(
            child: Image(
              image: AssetImage('assets/background3.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          AnimatedBuilder(
            animation: comicsController,
            builder: (context, child) {
              return ListComicsWidget(comics: comicsController);
            },
          ),
        ],
      ),
    );
  }
}
