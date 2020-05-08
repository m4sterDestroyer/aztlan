import 'package:aztlan/shared/text_form.dart';
import 'package:flutter/material.dart';

class OneToOnePageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Text('Basic Details',style: TextStyle(fontSize: 18,),),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Pick a person to set a meeting?',
                      style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.w100),
                    ),
                  ),
                  Container(
                    height: 40,
                    child: TextForm(
                      iconData: Icons.search,
                      obscuretext: false,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only( bottom: 30),
                  child: Text(
                    'Set meeting duration',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w100),
                  ),
                ),
                Column(
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[200],
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '15 Mins',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[400],
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '30 Mins',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[700],
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '45 Mins',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[900],
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '60 Mins',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
