import 'package:dio/dio.dart';
import 'package:marvelapk01/core/service/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio();
  }
}
