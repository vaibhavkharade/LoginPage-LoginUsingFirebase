import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'Modal/modal.dart';
import 'Screens/home.dart';
import 'Screens/register.dart';
import 'Screens/signIn.dart';

class Prov extends StatefulWidget {
  @override
  _ProvState createState() => _ProvState();
}

class _ProvState extends State<Prov> {
  var user ;
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
    try{
    user = Provider.of<User>(context);
    }catch(e){
      print(e.toString());
    }
    if (user != null) {
      print('inHome');
      return Home();
    } else {
      print('inAuthentication');
      if (signIn) {
        return SignIn(toggle: toggle, color1: color1, color2: color2);
      } else {
        return Register(toggle: toggle, color1: color1, color2: color2);
      }
    }
  }
}
