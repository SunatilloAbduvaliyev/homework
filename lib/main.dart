import 'package:flutter/material.dart';
import 'package:mvvm/data/api_provider/api_provider.dart';
import 'package:mvvm/screen/country/countries_screen.dart';
import 'package:mvvm/screen/home_scree.dart';
import 'package:mvvm/view_model/country_view_model.dart';
import 'package:mvvm/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

import 'data/repository/country_repository.dart';

void main() {
  ApiProvider apiProvider = ApiProvider();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => CountryViewModel(
          countryRepository: CountryRepository(
            apiProvider: apiProvider,
          ),
        ),
      ),
      ChangeNotifierProvider(
        create: (_) => UserViewModel(
          userRepository: CountryRepository(
            apiProvider: apiProvider,
          ),
        ),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
