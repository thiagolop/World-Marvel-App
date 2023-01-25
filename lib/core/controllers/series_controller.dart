import 'package:flutter/cupertino.dart';
import '../models/marvel_model_series.dart';
import '../repositories/marvel_repository_series.dart';
import '../repositories/marvel_repository_series_imp.dart';
import '../service/dio_service_imp.dart';

class SeriesController with ChangeNotifier {
  final MarvelRepositorySeries marvelRepositorySeries = MarvelRepositorySeriesImp(DioServiceImp());
  List<ResultsSeries> listSeries = [];

  loadCurrentSeries({required String id}) async {
    MarvelModelSeries marvelModelSeries = await marvelRepositorySeries.getSeries(id: id);
    listSeries.addAll(marvelModelSeries.data.results);
    notifyListeners();
  }
}
