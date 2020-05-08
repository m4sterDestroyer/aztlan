import 'dart:html';

import 'package:aztlan/main.dart';
import 'package:aztlan/onboard_shared/dots.dart';
import 'package:aztlan/shared/colors.dart';
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
              height: screenHeight * 0.2,
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
          color: White,
          height: screenHeight * 0.7,
          width: screenWidth * 0.5,
        child: OneToOneContent(width: screenWidth * 0.5,height: screenHeight*0.7,)
        ),
      ),
      SizedBox(width: 100,)
    ];
  }
}

class CustomDialog extends StatelessWidget {
  final double screenHeight, screenWidth;

  const CustomDialog({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height= screenHeight * 0.5;
    double width= screenWidth * 0.4;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              width: width,
              height: height*0.15,
              color: DarkBlue,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(flex: 3,),
                    Center(
                      child: Text(
                        'My Schedule',
                        style: TextStyle(
                            color: White, fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),Spacer(flex: 2,),
                    Expanded(
                      child: IconButton(
                        icon: Icon(Icons.clear),
                        color: White,
                        onPressed: ()=>Navigator.of(context).pop(),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(height: 250,width: 350,color: Colors.red,child: Center(child: Text('Calander View',style: TextStyle(color: White),),),),
                  Container(height: 250,width: 200,color: Colors.green,child: Center(child: Text('My day schedule',style: TextStyle(color: White),),)),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
