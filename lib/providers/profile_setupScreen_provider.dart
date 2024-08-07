import 'package:flutter/material.dart';

class ProfileSetupscreenProvider extends ChangeNotifier {
  List<String> country = [
    'India',
    'Pakistan',
    'America',
    'Italy',
    'South Korea',
    'South Africa',
    'Japan',
    'Canada',
    'China',
    'France'
  ];

  List<String> get countries => country;
}
