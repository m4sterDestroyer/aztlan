import 'dart:html';

import 'package:flutter/material.dart';

class OneToOne extends StatelessWidget {
  final double screenHeight, screenWidth;

  const OneToOne({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          children: OneToOnePageChildren(),
        );
      } else {
        return Column(children: OneToOnePageChildren());
      }
    });
  }

  List<Widget> OneToOnePageChildren() {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Colors.black, 
              width: 1,
            ),
          ),
          height: 172,
          width: 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1,color: Colors.black)
                      ),
                    ),
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
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1,color: Colors.black)
                      ),
                    ),
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
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1,color: Colors.black)
                      ),
                    ),
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
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Container(color: Colors.black,height: screenHeight*0.7,width: screenWidth*0.5,),
      )

    ];
  }
}
