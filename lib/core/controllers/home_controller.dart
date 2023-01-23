import 'package:flutter/material.dart';
import 'package:marvelapk01/core/models/marvel_model.dart';
import '../repositories/marvel_repository.dart';
import '../repositories/marvel_repository_imp.dart';
import '../service/dio_service_imp.dart';

class HomeController extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final MarvelRepository marvelRepository = MarvelRepositoryImp(DioServiceImp());
  int page = 0;
  int pageSize = 90;
  List<Character> listCharacter = [];
  List seachCharacter = [];
  int limit = 100;
  int offset = 0;
  int totalCharacters = 1562;

  // setupTotalCharacters() async {
  //   await getTotalCharacters();
  //   await loadSeach();
  // }

  // getTotalCharacters() async {
  //   ModelMarvel modelMarvel = await marvelRepository.getCharacters(limit: limit, offset: offset);
  //   int total = modelMarvel.data.total;
  //   totalCharacters = total;
  // }

  // loadSeach() async {
  //   ModelMarvel modelMarvel = await marvelRepository.getCharacters(limit: limit, offset: offset);
  //   var results = modelMarvel.data.results.map((e) => e.name).toList();
  //   seachCharacter.add(results);
  //   print('Personagens:  ${seachCharacter}');
  // }

  HomeController() {
    scrollController.addListener(onScroll);
  }

  loadCurrentPage() async {
    int limit = pageSize;
    int offset = page * pageSize;
    ModelMarvel modelMarvel = await marvelRepository.getCharacters(limit: limit, offset: offset);
    listCharacter.addAll(modelMarvel.data.results);
    // getTotalCharacters();
    // loadSeach();
    notifyListeners();
  }

  loadNextPage() {
    page++;
    loadCurrentPage();
  }

  void onScroll() {
    if (scrollController.offset == scrollController.position.maxScrollExtent) {
      loadNextPage();
    }
  }
}
