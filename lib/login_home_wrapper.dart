import 'package:aztlan/pages/login_page.dart';
import 'package:flutter/material.dart';

class LoginHomeWrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenHeight,screenWidth;
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Login(screenWidth: screenWidth,screenHeight: screenHeight,);
  }
}
