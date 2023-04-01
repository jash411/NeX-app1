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
        title: Text('Nutrition Expert '),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),


        body: Column(

          children: [
            Container(
              height: 170,
              width: 370,
              // padding: EdgeInsets.symmetric(vertical: 30,horizontal: 70),
              color: Colors.amber,
                  child:Align(
                    alignment: Alignment(-.6, .7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text('Eaten'),
                         Text('Remaining'),
                         Text('Losed')
                       ],
                      ),
                     ),
                         ),

            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Break Fast'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Lunch      ', textAlign: TextAlign.center,),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(' Dinner      ',
                    textAlign: TextAlign.center,),
                              ),


                ElevatedButton(
                  onPressed: () {},
                  child: Text(' Snack     ', textAlign: TextAlign.center,),
                ),
              ],
            ),
          ],

       )


    );
  }}

