import 'package:marvelapk01/core/api/api_marvel.dart';
import 'package:marvelapk01/core/repositories/marvel_repository_characters.dart';
import '../models/marvel_model_characters.dart';
import '../service/dio_service.dart';

class MarvelRepositoryCharactersImp implements MarvelRepositoryCharacters {
  final DioService _dioService;
  MarvelRepositoryCharactersImp(this._dioService);

  @override
  Future<ModelMarvelCharacters> getCharacters({required int limit, required int offset}) async {
    String url = ApiMarvel.getCharacters(limit: limit, offset: offset);
    try {
      final response = await _dioService.getDio().get(url);
      return ModelMarvelCharacters.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
