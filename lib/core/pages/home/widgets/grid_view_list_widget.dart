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
        crossAxisCount: 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        Character character = homeController.listCharacter[index];
        return Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[200],
            image: DecorationImage(
              image: NetworkImage('${character.thumbnail.path}.${character.thumbnail.extension}'),
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
                    character.name,
                    style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// GridView.count(
//       controller: widget._homeController.scrollController,
//       crossAxisCount: 2,
//       crossAxisSpacing: 1,
//       mainAxisSpacing: 8,
//       physics: const BouncingScrollPhysics(),
//       children: [
       
//           Container(
//             margin: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               color: Colors.grey[200],
//               image: DecorationImage(
//                 image: NetworkImage('${widget.marvel!.data.results[i].thumbnail.path}.${widget.marvel!.data.results[i].thumbnail.extension}'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Container(
//                     padding: const EdgeInsets.all(8),
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
//                       color: Colors.black54,
//                     ),
//                     child: Text(
//                       widget.marvel!.data.results[i].name,
//                       style: GoogleFonts.lato(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//       ],
//     );