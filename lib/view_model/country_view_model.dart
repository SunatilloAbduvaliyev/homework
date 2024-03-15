import 'package:flutter/cupertino.dart';
import 'package:mvvm/data/repository/country_repository.dart';

import '../data/model/country_model/country_model.dart';

class CountryViewModel extends ChangeNotifier {
  final CountryRepository countryRepository;

  CountryViewModel({required this.countryRepository}) {
    fetchCountry();
  }


  bool isLoading = false;
  List<CountryModel> countries = [];

  fetchCountry() async {
    isLoading = true;
    notifyListeners();
    List<CountryModel> country = await countryRepository.getAllCountries();
    isLoading = false;
    notifyListeners();
      countries = country;
      notifyListeners();
  }

}