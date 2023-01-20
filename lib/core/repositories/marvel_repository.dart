import '../models/marvel_model.dart';

abstract class MarvelRepository {
  Future<ModelMarvel> getCharacters({required int limit, required int offset});
}
