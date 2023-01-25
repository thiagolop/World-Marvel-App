import 'package:marvelapk01/core/models/marvel_model_stories.dart';
import 'package:marvelapk01/core/repositories/marvel_repository_stories.dart';
import '../api/api_marvel.dart';
import '../service/dio_service.dart';

class MarvelRepositoryStoriesImp implements MarvelRepositoryStories {
  final DioService _dioService;
  MarvelRepositoryStoriesImp(this._dioService);

  @override
  Future<MarvelModelStories> getStories({required String id}) async {
    try {
      final response = await _dioService.getDio().get(ApiMarvel.getStories(id: id.toString()));
      return MarvelModelStories.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
