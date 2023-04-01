import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
  home: Nutrition(),
  ));
class Nutrition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Nutrition Expert App'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(

                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
      child: Row(

        // mainAxisAlignment: _mainAxisAlignment,
        // mainAxisSize: MAinAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment(-.90,-.9),
              child: ElevatedButton.icon(
                onPressed: (){
                  print('Break fast added');
                },
                icon: Icon(
                  Icons.add_box_outlined,
                ),
                label: Text('Break fast'),
              )
          ),
          ),

          Container(
              child: ElevatedButton.icon(
                onPressed: (){
                  print('Break fast added');
                },
                icon: Icon(
                  Icons.add_box_outlined,
                ),
                label: Text('Break fast'),
              )


          )
          // )
        ],
      ),

      )
              )
          )
    ],


       )


    );
  }}

