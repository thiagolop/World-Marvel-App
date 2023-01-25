import '../models/marvel_model_stories.dart';

abstract class MarvelRepositoryStories {
  Future<MarvelModelStories> getStories({required String id});
}
