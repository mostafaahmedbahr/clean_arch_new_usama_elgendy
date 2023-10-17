class WeatherEntity {
  final int id;
  final String cityName;
  final String main;
  final String description;
  final double temp;
  final int pressure;

  WeatherEntity(
      {required this.id,
      required this.cityName,
      required this.main,
      required this.description,
      required this.temp,
      required this.pressure});
}
