import 'package:flutter/material.dart';

class CityProviders extends ChangeNotifier {
  List<String> city = [
    'Kollam',
    'Palakkad',
    'Kozhikode',
    'Kannur',
    'Trivandrum',
    'Thrissur',
    'Alapuzha',
    'Kottayam',
    'Idukki',
    'Kochi'
  ];

  String selectedCity = 'Kollam';

  List<String> get cities => city;

  String get City => selectedCity;

  void setSelectedCity(String city) {
    selectedCity = city;
    notifyListeners();
  }
}
