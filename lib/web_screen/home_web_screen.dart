import 'package:aztlan/shared/colors.dart';
import 'package:aztlan/shared/web_shared/appbar.dart';
import 'package:flutter/material.dart';
import 'package:aztlan/extensions/hover_extension.dart';

class WebHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: PageChildren(constraints.biggest.width / 2));
          } else {
            return Column(children: PageChildren(constraints.biggest.width));
          }
        },
      ),
    );
  }

  List<Widget> PageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
      )
    ];
  }
}
