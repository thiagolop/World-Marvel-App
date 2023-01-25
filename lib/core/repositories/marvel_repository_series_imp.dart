import 'package:marvelapk01/core/models/marvel_model_series.dart';
import 'package:marvelapk01/core/repositories/marvel_repository_series.dart';

import '../api/api_marvel.dart';
import '../service/dio_service.dart';

class MarvelRepositorySeriesImp implements MarvelRepositorySeries {
  final DioService _dioService;
  MarvelRepositorySeriesImp(this._dioService);

  @override
  Future<MarvelModelSeries> getSeries({required String id}) async {
    // try {
      final response = await _dioService.getDio().get(ApiMarvel.getSeries(id: id.toString()));
      return MarvelModelSeries.fromJson(response.data);
    // } catch (e) {
    //   throw Exception(e);
    // }
  }
}
