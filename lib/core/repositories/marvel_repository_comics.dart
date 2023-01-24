import '../models/marvel_model_comics.dart';

abstract class MarvelRepositoryComics {
  Future<MarvelModelComics> getComics({required String id});
}
