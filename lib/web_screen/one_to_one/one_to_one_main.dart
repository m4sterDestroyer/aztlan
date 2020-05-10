import 'dart:html';
import 'package:aztlan/shared/colors.dart';
import 'package:aztlan/web_screen/Dialog_boxes/dialog_box.dart';
import 'package:flutter/material.dart';

import 'one_to_one_content.dart';

class OneToOne extends StatelessWidget {
  final double screenHeight, screenWidth;

  const OneToOne({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Stack(children: [
          Container(
              width: screenWidth,
              height: screenHeight * 0.3,
              color: Colors.indigo[400]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: OneToOnePageChildren(context),
          ),
        ]);
      } else {
        return Column(children: OneToOnePageChildren(context));
      }
    });
  }

  List<Widget> OneToOnePageChildren(BuildContext context) {
    return <Widget>[
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        height: 170,
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  child: Center(
                      child: Text(
                    'Profile',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Center(
                      child: Text(
                    'Meeting Archive',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  child: Center(
                      child: Text(
                    'People',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: Center(
                      child: Text(
                    'My Schedule',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                      );
                    });
              },
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 80,),
        child: Container(
          height: screenHeight * 0.7,
          width: screenWidth * 0.5,
        child: OneToOneContent(width: screenWidth * 0.5,height: screenHeight*0.7,)
        ),
      ),
      SizedBox(width: 100,)
    ];
  }
}

