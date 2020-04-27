import 'package:flutter/material.dart';
import 'package:aztlan/shared/colors.dart';
import 'package:aztlan/extensions/hover_extension.dart';

class appbar extends AppBar {
appbar():super(title:Text('Aztlan',style: TextStyle(
    color: Black,
    fontSize: 30,
    fontWeight: FontWeight.w600),
),
    elevation: 2,
    backgroundColor: White,
    actions:<Widget>[
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Products', style: TextStyle(color: Black, fontSize: 16)).showHoverCursor.moveUpOnHover,
      SizedBox(
        width: 30,
      ),
      Text('Workflows',
          style: TextStyle(color: Black, fontSize: 16)).showHoverCursor.moveUpOnHover,
      SizedBox(
        width: 30,
      ),
      Text('Login', style: TextStyle(color: Black, fontSize: 16)).showHoverCursor.moveUpOnHover,
      SizedBox(
        width: 30,
      ),
      Text('Demo',
          style: TextStyle(
              color: Black, fontSize: 16, fontWeight: FontWeight.w800)).showHoverCursor.moveUpOnHover,
      SizedBox(
        width: 40,
      ),
    ],
  )
]);
}