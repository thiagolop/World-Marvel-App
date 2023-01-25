import '../models/marvel_moder_events.dart';

abstract class MarvelRepositoryEvents {
  Future<ModelMarvelEvents> getEvents({required String id});
}
