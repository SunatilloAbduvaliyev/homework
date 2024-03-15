import 'package:mvvm/data/model/country_model/country_coatofarms_model.dart';
import 'package:mvvm/data/model/country_model/country_flag_model.dart';
import 'package:mvvm/data/model/country_model/country_name_model.dart';

class CountryModel{
  final CountryNameModel name;
  final num area;
  final num population;
  final CountryFlagModel flag;
  final CountryCoatOfArms arms;

  CountryModel({
    required this.name,
    required this.flag,
    required this.arms,
    required this.area,
    required this.population,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: CountryNameModel.fromJson(json['name']),
      flag: CountryFlagModel.fromJson(json['flags']),
      arms: CountryCoatOfArms.fromJson(json['coatOfArms']),
      area: json['area'] as double? ?? 0,
      population: json['population'] as int? ?? 0,
    );
  }
}