class WeatherEntity {
  final int? weatherId;
  final String? cityName;
  final String? weatherMain;
  final String? description;
  final double? temp;
  final int? pressure;

  WeatherEntity(
      { this.weatherId,
       this.cityName,
       this.weatherMain,
       this.description,
       this.temp,
       this.pressure});
}
