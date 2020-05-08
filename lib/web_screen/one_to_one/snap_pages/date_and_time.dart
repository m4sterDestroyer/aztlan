import 'package:flutter/material.dart';


class OneToOnePageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Text('Set Meeting Date and time',style: TextStyle(fontSize: 18,),),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('Time: x Minutes'),
                Text('Date: x May 2020'),
              ],
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.grey,
            ),
            Container(
              height: 300,
              width: 100,
              color: Colors.grey,
            )
          ],
        )
      ],
    );
  }
}
