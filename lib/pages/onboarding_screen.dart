import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:aztlan/shared/colors.dart';

class Onboard extends StatefulWidget {
  final double screenHeight, screenWidth;

  const Onboard({Key key, this.screenHeight, this.screenWidth})
      : super(key: key);

  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [PopBlue, Colors.deepPurple],
              stops: [0.3, 0.8],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/man.png'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),SizedBox(height: 20,),
                    Text(
                      'This is the heading',
                      style: TextStyle(
                        fontSize: 22,
                        color: White,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'This is the heading and you can put what ever text you over here. The text can be bold italics'
                          'anything of your choice',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: White,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    child: Text(
                      'Getting Started',
                      style: TextStyle(fontSize: 18),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.all(15),
                    color: DarkBlue,
                    textColor: White,
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 10),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Dont have an account yet? ',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.black)),
                            TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: White,
                                    fontWeight: FontWeight.w600),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => print('click')),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
