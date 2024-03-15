import 'package:flutter/material.dart';
import 'package:mvvm/screen/user/user_screen.dart';

import 'country/countries_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screen = [const CountriesScreen(), const UsersScreen()];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              screen.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Ink(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => screen[index]));
                    },
                    child: Center(
                      child: Text(
                        'Task ${index + 1}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
