import 'package:clean_arch_new_usama_elgendy/core/utils/constants.dart';
import 'package:dio/dio.dart';


class ApiServices
{
  final Dio? dio;
  final   baseUrl = AppConstance.baseUrl;

  ApiServices(this.dio);

  Future<Map<String, dynamic>> getData({
    required String url,
  }) async
  {
    var response = await dio!.get("$baseUrl$url");
    return response.data;
  }





}