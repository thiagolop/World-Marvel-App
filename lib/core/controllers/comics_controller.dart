import 'package:flutter/material.dart';

import '../models/marvel_model_comics.dart';
import '../repositories/marvel_repository_comics.dart';
import '../repositories/marvel_repository_comics_imp.dart';
import '../service/dio_service_imp.dart';

class ComicsController extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final MarvelRepositoryComics marvelRepositoryComics = MarvelRepositoryComicsImp(DioServiceImp());
  List<ResultsComics> listComics = [];

  loadCurrentComics({required String id}) async {
    MarvelModelComics marvelModelComics = await marvelRepositoryComics.getComics(id: id);
    listComics.addAll(marvelModelComics.data.results);
    notifyListeners();
  }
}
