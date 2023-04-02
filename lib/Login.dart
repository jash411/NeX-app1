/* ******************************************
                 *** START***
****************************************** */

import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LLoginScreen1(),
));


class LLoginScreen1 extends StatefulWidget {
  @override
  _LLoginScreen1State createState() => _LLoginScreen1State();
}

class _LLoginScreen1State extends State<LLoginScreen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
backgroundColor: Colors.grey[300],
        // appBar: AppBar(
        //   backgroundColor: Colors.grey[800],
        //   title: Text('Login Page'),
        //   centerTitle: true,
        // ),

        body: Center(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 1.5,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // SizedBox(
                    //   height: 100.0,
                    //   child: Image.asset(
                    //     "image/jash.jpg",
                    //     fit: BoxFit.contain,
                    //   ),
                    // ),
                    SizedBox(height: 48.0),
                    emailField,
                    SizedBox(height: 24.0),
                    passwordField,
                    SizedBox(
                      height: 36.0,
                    ),
                    loginButton,
                    SizedBox(
                      height: 16.0,
                    ),
                    signupButton,
                    SizedBox(
                      height: 16.0,
                    ),
                  ],
                ),
              ),
            ),
          ),

        ),
  )
    );
}

        final emailField = TextField(
        style: TextStyle(fontSize: 20.0,color: Colors.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Email",
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
      );

      final passwordField = TextField(
      obscureText: true,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        // minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );

    final signupButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.grey,
    child: MaterialButton(
      // minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 6.0),
      onPressed: () {},
      child: Text("signup",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
              fontWeight: FontWeight.bold)),
    ),
  );

  }



