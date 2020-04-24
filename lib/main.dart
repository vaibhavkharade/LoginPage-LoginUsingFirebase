import 'package:flutter/material.dart';
import 'package:loginproj/Screens/signIn.dart';

import 'Auth_services/auth.dart';
import 'Screens/home.dart';
import 'Screens/register.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var signIn = true;
  var color1 = Colors.red[400];
  var color2 = Colors.purple[400];
  void toggle() {
    setState(() {
      signIn = !signIn;
      if (signIn == true) {
        color1 = Colors.red[400];
        color2 = Colors.purple[400];
      } else {
        color1 = Colors.purple[400];
        color2 = Colors.red[400];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Authentication().usrStrm,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Home();
          } else {
            if (signIn) {
              return SignIn(toggle: toggle, color1: color1, color2: color2);
            } else {
              return Register(toggle: toggle, color1: color1, color2: color2);
            }
          }
        });
  }
}
