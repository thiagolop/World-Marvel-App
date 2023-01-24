import '../models/marvel_model_characters.dart';

abstract class MarvelRepositoryCharacters {
  Future<ModelMarvelCharacters> getCharacters({required int limit, required int offset});
}
