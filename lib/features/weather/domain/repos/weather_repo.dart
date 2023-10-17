import 'package:clean_arch_new_usama_elgendy/features/weather/domain/entites/weather_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/error.dart';


abstract class WeatherRepo {


  Future<Either< Errors, List<WeatherEntity>>> getWeatherDataByCityName(String cityName);

}

