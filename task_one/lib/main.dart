import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:task1/login_page.dart';
import 'package:task1/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: const [Locale('en', 'US')],
      localizationsDelegates: const [CountryLocalizations.delegate],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
