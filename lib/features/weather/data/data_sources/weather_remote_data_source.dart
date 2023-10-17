import 'dart:convert';

import 'package:clean_arch_new_usama_elgendy/core/utils/constants.dart';
import 'package:clean_arch_new_usama_elgendy/features/weather/data/models/weather_model.dart';
import 'package:clean_arch_new_usama_elgendy/features/weather/domain/entites/weather_entity.dart';

import '../../../../core/utils/api_services.dart';

abstract class WeatherRemoteDataSource{

  Future<WeatherEntity?> getWeatherDataByCity(String cityName);

}


class WeatherRemoteDataSourceImplementation extends WeatherRemoteDataSource
{

  final ApiServices  apiServices;
  WeatherRemoteDataSourceImplementation(this.apiServices);

  @override
  Future<WeatherEntity?> getWeatherDataByCity(
    String? cityName,
) async{

     try{
       var result = await apiServices.getData(url: "${AppConstance.baseUrl}/weather?q=$cityName&appid=${AppConstance.apiKey}");
       print(result);
       print("mostafa 1");
       return WeatherModel.fromJson(json.decode(result.toString()));

     }catch(error){
       print("mostafa error 1 ");
       print(error.toString());
       return null;
     }

  }

}