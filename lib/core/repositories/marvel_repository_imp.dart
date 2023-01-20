import 'package:marvelapk01/core/api/api_marvel.dart';
import 'package:marvelapk01/core/repositories/marvel_repository.dart';
import '../models/marvel_model.dart';
import '../service/dio_service.dart';

class MarvelRepositoryImp implements MarvelRepository {
  final DioService _dioService;
  MarvelRepositoryImp(this._dioService);

  @override
  Future<ModelMarvel> getCharacters({required int limit, required int offset}) async {
    String url = ApiMarvel.getCharacters(limit: limit, offset: offset);
    try {
      final response = await _dioService.getDio().get(url);
      return ModelMarvel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
