import 'package:flutter/material.dart';
import 'package:marvelapk01/core/controllers/comics_controller.dart';

import '../../../models/marvel_model_comics.dart';

class ListComicsWidget extends StatelessWidget {
  const ListComicsWidget({Key? key, required this.comics}) : super(key: key);
  final ComicsController comics;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: comics.listComics.length,
      controller: comics.scrollController,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
      itemBuilder: (context, index) {
        ResultsComics comic = comics.listComics[index];
        return Stack(
          children: [],
        );
      },
    );
  }
}
