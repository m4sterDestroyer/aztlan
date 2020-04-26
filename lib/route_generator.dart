import 'package:aztlan/pages/login_page.dart';
import 'package:aztlan/pages/onboarding_screen.dart';
import 'package:aztlan/pages/signup_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    Map args =settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=> Onboard());
      case '/login':
        return MaterialPageRoute(builder: (_)=> Login(screenHeight: args['screenHeight'],screenWidth: args['screenWidth'],));
      case '/signup':
        return MaterialPageRoute(builder: (_)=> Signup(screenHeight: args['screenHeight'],screenWidth: args['screenWidth'],));
    }
  }
}
