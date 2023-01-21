import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelapk01/core/controllers/home_controller.dart';


import '../../../models/marvel_model.dart';

class GridViewListWidget extends StatelessWidget {
  const GridViewListWidget({Key? key, required this.homeController}) : super(key: key);
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: homeController.scrollController,
      itemCount: homeController.listCharacter.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (context, index) {
        Character character = homeController.listCharacter[index];
        return Container(
          margin: const EdgeInsets.all(8),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/character', arguments: character);
            },
            child: Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: '${character.thumbnail.path}.${character.thumbnail.extension}',
                  progressIndicatorBuilder: (context, url, progress) => const Center(
                    child: CircularProgressIndicator(
                      value: null,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                      color: Colors.black87,
                    ),
                    child: Text(
                      character.name,
                      style: GoogleFonts.lato(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        );
      },
    );
  }
}