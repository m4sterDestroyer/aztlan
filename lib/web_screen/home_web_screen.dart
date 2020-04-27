import 'package:aztlan/shared/colors.dart';
import 'package:aztlan/shared/web_shared/appbar.dart';
import 'package:flutter/material.dart';

class WebHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text(
          'Aztlan',
          style: TextStyle(
              color: Black,
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: White,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Products', style: TextStyle(color: Black, fontSize: 16)),
              SizedBox(
                width: 30,
              ),
              Text('Workflows',
                  style: TextStyle(color: Black, fontSize: 16)),
              SizedBox(
                width: 30,
              ),
              Text('Login', style: TextStyle(color: Black, fontSize: 16)),
              SizedBox(
                width: 30,
              ),
              Text('Demo',
                  style: TextStyle(
                      color: Black, fontSize: 16, fontWeight: FontWeight.w800)),
              SizedBox(
                width: 40,
              ),
            ],
          )
        ],
      ),
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
