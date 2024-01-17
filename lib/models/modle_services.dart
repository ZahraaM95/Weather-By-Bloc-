class WeatherModle {
  final String cityName;
  final String date;
  final String tamp;
  final String? image;
  final String country;

  WeatherModle({
    required this.cityName,
    required this.date,
    required this.tamp,
    this.image,
    required this.country,
  });
  factory WeatherModle.fromJson(json) {
    return WeatherModle(
      cityName: json["location"]["name"],
      date: json["current"]["last_updated"],
      tamp: json["current"]["temp_c"],
      image: json["current"]["icon"],
      country: json["current"]["icon"],
    );
  }
}
