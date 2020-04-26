import 'package:flutter/material.dart';
import 'package:loginproj/Auth_services/auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: 100,
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right:10.0),
              child: RaisedButton(onPressed: () async{
               Authentication().signOut();
              }),
            ))
      ],
    ));
  }
}
