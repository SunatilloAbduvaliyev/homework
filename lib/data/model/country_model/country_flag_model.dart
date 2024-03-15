class CountryFlagModel{
  final String png;
  final String alt;

  CountryFlagModel({
    required this.png,
    required this.alt,
});
  factory CountryFlagModel.fromJson(Map<String, dynamic>json){
    return CountryFlagModel(
      png: json['png'] as String? ?? '',
      alt: json['alt'] as String? ?? '',
    );
  }
}