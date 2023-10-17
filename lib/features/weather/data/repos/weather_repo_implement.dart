import 'package:clean_arch_new_usama_elgendy/core/errors/error.dart';
import 'package:clean_arch_new_usama_elgendy/features/weather/domain/entites/weather_entity.dart';
import 'package:clean_arch_new_usama_elgendy/features/weather/domain/repos/weather_repo.dart';
import 'package:dartz/dartz.dart';

import '../data_sources/weather_remote_data_source.dart';

class WeatherRepoImplement extends WeatherRepo{

  final WeatherRemoteDataSource weatherRemoteDataSource;
  WeatherRepoImplement(this.weatherRemoteDataSource);

  @override
  Future<Either<Errors, WeatherEntity>> getWeatherDataByCityName(String cityName) async{
    WeatherEntity? weatherEntityData;
    weatherEntityData = await weatherRemoteDataSource.getWeatherDataByCity(cityName).then((value){
      print("mostafa 2 ");
      print(weatherEntityData!.cityName);
    }).catchError((error){
      print(error.toString());
      print("mostafa error 2 ");
    });
    return left(Errors());
  }
}