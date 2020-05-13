import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.black12),
          child: Center(
            child: Text(
              "404 | Not Found",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.white),
            ),
          ),
        ),
        Positioned(
          child: CupertinoButton.filled(
              child: Text(" Go Back "), onPressed: () {}),
        )
      ],
    );
  }
}
