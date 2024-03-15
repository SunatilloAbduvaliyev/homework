class CountryLanguageModel {
  final String ell;
  final String tur;

  CountryLanguageModel({
    required this.ell,
    required this.tur,
});
  factory CountryLanguageModel.fromJson(Map<String, dynamic>json){
    return CountryLanguageModel(
      ell: json['ell'] ?? "",
      tur: json['tur'] ?? "",
    );
  }
}