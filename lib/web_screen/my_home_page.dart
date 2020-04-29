import 'package:aztlan/shared/web_shared/appbar.dart';
import 'package:flutter/material.dart';

import 'home_web_screen.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 800) {
        return Scaffold(
          appBar: appbarDesktop(),
          body: SingleChildScrollView(
            child: WebHome(),
          ),
        );
      } else {
        return Scaffold(
          appBar: appbarMobile(),
          body: SingleChildScrollView(
            child: WebHome(),
          ),
        );
      }
    });
  }
}
