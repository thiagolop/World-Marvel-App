import '../models/marvel_model_series.dart';

abstract class MarvelRepositorySeries {
  Future<MarvelModelSeries> getSeries({required String id});
}
