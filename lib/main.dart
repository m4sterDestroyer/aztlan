import 'package:flutter/material.dart';
import 'login_home_wrapper.dart';
import 'shared/colors.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: BuildThemeData(),
      home: LoginHomeWrapper(),
    );
  }
}

ThemeData BuildThemeData(){
  final baseTheme =ThemeData.light();
  return baseTheme.copyWith(
    primaryColor: DarkBlue,
    primaryColorDark: Black,
    primaryColorLight: SkyBlue,
    accentColor: LightBlue
  );
}
