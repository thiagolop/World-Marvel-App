import 'package:flutter/cupertino.dart';
import '../models/marvel_moder_events.dart';
import '../repositories/marvel_repository_events.dart';
import '../repositories/marvel_repository_events_imp.dart';
import '../service/dio_service_imp.dart';

class EventsController with ChangeNotifier {
  final MarvelRepositoryEvents marvelRepositoryEvents = MarvelRepositoryEventsImp(DioServiceImp());
  List<ResultsEvents> listEvents = [];

  loadCurrentEvents({required String id}) async {
    ModelMarvelEvents marvelModelEvents = await marvelRepositoryEvents.getEvents(id: id);
    listEvents.addAll(marvelModelEvents.data.results);
    notifyListeners();
  }
}
