import 'package:flutter/material.dart';
import 'package:marvelapk01/core/models/marvel_model_characters.dart';
import '../../../repositories/marvel_repository_characters.dart';
import '../../../repositories/marvel_repository_characters_imp.dart';
import '../../../service/dio_service_imp.dart';

class HomeController with ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final MarvelRepositoryCharacters marvelRepository = MarvelRepositoryCharactersImp(DioServiceImp());

  int page = 0;
  int pageSize = 90;
  List<Character> listCharacter = [];
  List seachCharacter = [];
  int limit = 100;
  int offset = 0;

  HomeController() {
    scrollController.addListener(onScroll);
  }

  loadCurrentPage() async {
    int limit = pageSize;
    int offset = page * pageSize;
    ModelMarvelCharacters modelMarvel = await marvelRepository.getCharacters(limit: limit, offset: offset);
    listCharacter.addAll(modelMarvel.data.results);
    notifyListeners();
  }

  loadNextPage() {
    page++;
    loadCurrentPage();
  }

  void onScroll() {
    if ((scrollController.position.pixels) == scrollController.position.maxScrollExtent) {
      loadNextPage();
    }
  }

  // void searchCharacter(String value) {
  //   seachCharacter = listCharacter.where((element) => element.name.toLowerCase().contains(value.toLowerCase())).toList();
  //   notifyListeners();
  // }
}
