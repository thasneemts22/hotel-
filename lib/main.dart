import 'package:flutter/material.dart';
import 'package:hotel_app/home_screen.dart';

import 'package:hotel_app/providers/city_providers.dart';
import 'package:hotel_app/providers/profile_setupScreen_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProfileSetupscreenProvider()),
        ChangeNotifierProvider(create: (_) => CityProviders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
