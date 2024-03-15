import 'package:flutter/cupertino.dart';
import 'package:mvvm/data/repository/country_repository.dart';

import '../data/model/country_model/country_model.dart';
import '../data/model/user_model/users_model.dart';

class UserViewModel extends ChangeNotifier {
  final CountryRepository userRepository;

  UserViewModel({required this.userRepository}) {
    fetchCountry();
  }


  bool isLoading = false;
  List<UserModel> users = [];

  fetchCountry() async {
    isLoading = true;
    notifyListeners();
    List<UserModel> user = await userRepository.getAllUsers();
    isLoading = false;
    notifyListeners();
    users = user;
    notifyListeners();
  }

}