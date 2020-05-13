import 'package:aztlan/pages/login_page.dart';
import 'package:aztlan/pages/notFound.dart';
import 'package:aztlan/pages/onboarding_screen.dart';
import 'package:aztlan/shared/web_shared/appbar.dart';
import 'package:aztlan/web_screen/login.dart';
import 'package:aztlan/web_screen/one_to_one/one_to_one_main.dart';
import 'package:flutter/material.dart';

import 'home_web_screen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight, screenWidth;
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 800) {
        return Scaffold(
          appBar: appbarDesktop(),
          body: SingleChildScrollView(
            child: OneToOne(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
          ),
        );
      } else {
        return Scaffold(
          appBar: appbarMobile(),
          drawer: new Drawer(
            child: ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: Text("Dummy Name"),
                  accountEmail: Text("Dummy@mail"),
                  currentAccountPicture: new CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://miro.medium.com/max/554/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg"),
                  ),
                ),
                ListTile(
                  title: new Text('Home'),
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (BuildContext context) => Onboard(),
                        ));
                  },
                ),
                ListTile(
                  title: new Text('Login'),
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (BuildContext context) => Login(),
                        ));
                  },
                ),
                ListTile(
                  title: new Text('404'),
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (BuildContext context) => NotFound(),
                        ));
                  },
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: OneToOne(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            ),
          ),
        );
      }
    });
  }
}


