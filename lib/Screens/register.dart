import 'package:flutter/material.dart';
import 'package:loginproj/DesignClip/backGPaint.dart';

class Register extends StatefulWidget {

  final Function toggle;
   final color1;
  final color2;
  Register({this.toggle , this.color1 , this.color2});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      CustomPaint(
        painter:Mypainter(s1:widget.color1 , s2:widget.color2),
        child:Container()
      ),
      Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 20,
                          child: IconButton(
                              color:Colors.white54,
                              icon: Icon(Icons.mode_edit,),
                              onPressed: () {
                                widget.toggle();
                              }),
                        ),
                       RichText(text:TextSpan(children: [
                        TextSpan(
                            text: 'S',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w200)),
                        TextSpan(
                            text: 'ignUp',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.w200)),
                     
                        TextSpan(
                            text: '!',
                            style: TextStyle(
                                fontSize: 42, fontWeight: FontWeight.w200)),
                    
                      ])),
                      ],
                    ),
                    SizedBox(height: 60),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'email',
                        hintStyle: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.w300),
                        alignLabelWithHint: true,
                        suffixText: '@',
                        prefixIcon: Icon(Icons.email, color: Colors.white60),
                        errorStyle: TextStyle(color: Colors.white60),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(18)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.indigo[900]),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.white60)),
                      ),
                      validator: (value) =>
                          value.isEmpty ? 'email must not be empty' : null,
                    ),
                    SizedBox(height: 18),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        errorStyle: TextStyle(color: Colors.white60),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        hintText: 'password',
                        hintStyle: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.w300),
                        prefixIcon: Icon(Icons.security, color: Colors.white60),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(18)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.indigo[900]),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.white60)),
                      ),
                      validator: (value) =>
                          value.isEmpty ? 'Password must not be empty' : null,
                    ),
                    SizedBox(height: 40),
                    Container(
                      alignment: Alignment.center,
                      child: FlatButton(
                        child: Text('Sign In',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w200)),
                        hoverColor: Colors.indigo,
                        onPressed: () {
                          if (formkey.currentState.validate()) {
                            print('validated');
                          }
                        },
                      ),
                    ),
                    SizedBox(
                        height: 60,
                        child: Text('*click the above login icon to login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w200)))
                  ]),
            ),
          ))
    ]));
  }
}



  //  Container(
  //       decoration: BoxDecoration(
  //           gradient: LinearGradient(
  //               begin: Alignment.topLeft,
  //               end: Alignment.bottomRight,
  //               colors: [
  //             Colors.red[900],
  //             Colors.blue[600],
  //             Colors.red[100]
  //           ])),
  //     )