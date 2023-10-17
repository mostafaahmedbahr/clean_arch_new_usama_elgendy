import 'package:clean_arch_new_usama_elgendy/core/errors/error.dart';
import 'package:clean_arch_new_usama_elgendy/core/use_cases/use_case_with_param.dart';
import 'package:clean_arch_new_usama_elgendy/features/weather/domain/entites/weather_entity.dart';
import 'package:clean_arch_new_usama_elgendy/features/weather/domain/repos/weather_repo.dart';
import 'package:dartz/dartz.dart';

class GetWeatherDataByCityNameUseCase extends UseCaseWithParam{

  final WeatherRepo weatherRepo;
  GetWeatherDataByCityNameUseCase(this.weatherRepo);

  @override
  Future<Either<Errors, List<WeatherEntity>>> call(param) async{
    return await weatherRepo.getWeatherDataByCityName("cityName");
  }
}