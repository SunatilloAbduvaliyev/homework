import 'package:mvvm/data/api_provider/api_provider.dart';

import '../model/country_model/country_model.dart';
import '../model/user_model/users_model.dart';

class CountryRepository{

  final ApiProvider apiProvider;

  CountryRepository({required this.apiProvider});

  Future<List<CountryModel>> getAllCountries() => apiProvider.getAllCountry();
  Future<List<UserModel>> getAllUsers() => apiProvider.getAllUsers();


}

