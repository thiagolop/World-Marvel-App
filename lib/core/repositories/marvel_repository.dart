import '../models/marvel_model.dart';

abstract class MarvelRepository {
  Future<ModelMarvel> getCharacters();
}
