import 'package:marvelapk01/core/api/api_marvel.dart';
import 'package:marvelapk01/core/repositories/marvel_repository_comics.dart';
import 'package:marvelapk01/core/service/dio_service.dart';
import '../models/marvel_model_comics.dart';

class MarvelRepositoryComicsImp implements MarvelRepositoryComics {
  final DioService _dioService;
  MarvelRepositoryComicsImp(this._dioService);

  @override
  Future<MarvelModelComics> getComics({required String id}) async {
    try {
      final response = await _dioService.getDio().get(ApiMarvel.getComics(id: id.toString()));
      return MarvelModelComics.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
