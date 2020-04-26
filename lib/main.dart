import 'package:flutter/material.dart';
import 'package:loginproj/Modal/modal.dart';
import 'package:loginproj/provider.dart';
import 'package:provider/provider.dart';
import 'Auth_services/auth.dart';


void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: Authentication().usrStrm,
      child: Prov(),
  
    );
  }
}

