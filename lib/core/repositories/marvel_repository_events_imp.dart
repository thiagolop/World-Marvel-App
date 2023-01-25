import 'package:marvelapk01/core/models/marvel_moder_events.dart';

import '../api/api_marvel.dart';
import '../service/dio_service.dart';
import 'marvel_repository_events.dart';

class MarvelRepositoryEventsImp implements MarvelRepositoryEvents {
  final DioService _dioService;
  MarvelRepositoryEventsImp(this._dioService);

  @override
  Future<ModelMarvelEvents> getEvents({required String id}) async {
    try {
      final response = await _dioService.getDio().get(ApiMarvel.getEvents(id: id.toString()));
      return ModelMarvelEvents.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
