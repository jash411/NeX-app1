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
color: Colors.amber,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MAinAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[

          Container(
            // padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Align(
              // alignment: Alignment.bottomRight,
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
            // color: Colors.lightBlue,
              height: 100,
              // height: MediaQuery.of(context).size.height * 0.5,
            width: 150,
            // padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                onPressed: (){
                  print('lunch added');
                },
                icon: Icon(
                  Icons.add_box_outlined,
                ),
                label: Text('Lunch'),
              )


          )
          )
        ],
      ),

      )
              )
          )
    ],


       )


    );
  }}

