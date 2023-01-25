import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../controllers/comics_controller.dart';
import '../../../models/marvel_model_comics.dart';

class ComicsWidget extends StatefulWidget {
  const ComicsWidget({Key? key, required this.characterID}) : super(key: key);
  final int characterID;

  @override
  State<ComicsWidget> createState() => _ComicsWidgetState();
}

class _ComicsWidgetState extends State<ComicsWidget> {
  final ComicsController comicsController = ComicsController();

  @override
  void initState() {
    super.initState();
    comicsController.loadCurrentComics(id: widget.characterID.toString());
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: comicsController,
      builder: (context, child) {
        return Positioned(
          top: 200,
          left: 15,
          right: 15,
          bottom: 280,
          child: Container(
            width: double.infinity,
            height: 340,
            color: Colors.transparent,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: comicsController.listComics.length,
              itemBuilder: (context, index) {
                ResultsComics comics = comicsController.listComics[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/comics', arguments: comics);
                  },
                  child: Column(
                    children: [
                      CachedNetworkImage(
                        imageUrl: '${comicsController.listComics[index].thumbnail.path}.${comicsController.listComics[index].thumbnail.extension}',
                        width: 230,
                        height: 300,
                        fit: BoxFit.scaleDown,
                        progressIndicatorBuilder: (context, url, progress) => const Center(
                          child: CircularProgressIndicator(
                            value: null,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        ),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                          color: Colors.black87,
                        ),
                        child: Text(
                          comicsController.listComics[index].titleShort,
                          style: GoogleFonts.lato(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}