import 'package:flutter/cupertino.dart';
import '../models/marvel_model_stories.dart';
import '../repositories/marvel_repository_stories.dart';
import '../repositories/marvel_repository_stories_imp.dart';
import '../service/dio_service_imp.dart';

class StoriesController with ChangeNotifier {
  final MarvelRepositoryStories marvelRepositoryStories = MarvelRepositoryStoriesImp(DioServiceImp());
  List<ResultsStories> listStories = [];

  loadCurrentStories({required String id}) async {
    MarvelModelStories marvelModelStories = await marvelRepositoryStories.getStories(id: id);
    listStories.addAll(marvelModelStories.data.results);
    notifyListeners();
  }
}
