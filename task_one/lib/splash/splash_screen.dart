import 'package:flutter/material.dart';
import 'package:task1/splash/components/size_config.dart';
import 'package:task1/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
