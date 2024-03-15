import 'package:flutter/material.dart';
import 'package:mvvm/data/model/country_model/country_model.dart';
import 'package:mvvm/view_model/country_view_model.dart';
import 'package:provider/provider.dart';

import 'country_screen.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: context.watch<CountryViewModel>().isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: context.watch<CountryViewModel>().countries.length,
                  itemBuilder: (context, index) {
                    CountryModel countryModel =
                        context.watch<CountryViewModel>().countries[index];
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CountryScreen(
                              countryModel: countryModel,
                            ),
                          ),
                        );
                      },
                      title: Text(
                        countryModel.name.common,
                        style: const TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        countryModel.name.official,
                        style: const TextStyle(color: Colors.black),
                      ),
                    );
                  },
                )),
    );
  }
}
