import 'package:flutter/material.dart';
import 'package:mvvm/data/model/country_model/country_model.dart';

class CountryScreen extends StatelessWidget {
  final CountryModel countryModel;

  const CountryScreen({super.key, required this.countryModel});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F3),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(countryModel.flag.png,
                width: double.infinity,
                height: 200,),
                const SizedBox(height: 20,),
                Text(
                  countryModel.name.common,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 5,),
                Text(
                  countryModel.name.official,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5,),
                RichText(
                  text:  TextSpan(
                    text: "Hududi:  ",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                      text: countryModel.area.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      )
                    ]
                  )
                ),
                const SizedBox(height: 10,),
                RichText(
                    text:  TextSpan(
                        text: "Aholisi:  ",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: countryModel.population.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ]
                    )
                ),
                const SizedBox(height: 20,),
                Text(
                  countryModel.flag.alt,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
