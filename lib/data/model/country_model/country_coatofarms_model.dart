class CountryCoatOfArms {
  final String png;

  CountryCoatOfArms({required this.png});

  factory CountryCoatOfArms.fromJson(Map<String, dynamic> json) => CountryCoatOfArms(
    png: json['png'] ?? '',
  );
}