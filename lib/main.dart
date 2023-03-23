import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
  home: Nutrition(),
  ));

class Nutrition extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Nutrition Expert'),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
        ),
      body: Center(
        // padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Text(
                'Nutrition Expert',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

           ),

       );


  }
}

