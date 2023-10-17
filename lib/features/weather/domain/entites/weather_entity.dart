class WeatherEntity {
  final int? weatherId;
  final String? cityName;
  final dynamic weatherMain;
  final String? description;
  final num? temp;
  final num? pressure;

  WeatherEntity(
      { this.weatherId,
       this.cityName,
       this.weatherMain,
       this.description,
       this.temp,
       this.pressure});
}
