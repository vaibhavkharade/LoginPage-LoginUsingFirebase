import 'package:flutter/material.dart';
import 'package:loginproj/Screens/register.dart';
import 'package:loginproj/Screens/signIn.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner:false ,home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Register();
  }
}
