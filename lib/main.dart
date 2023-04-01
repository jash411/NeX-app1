import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
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


        body: Column(  //main column of the whole home interface

          children: [// this is the main children for the whole interface
            Text('Summary',
            style: TextStyle(
              height: 4,
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
            ),

            //summarty container will start from this
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

//summary container will End in this

                                  Text('Activites',textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    height: 4,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,


                                  ),

                                  ),

               //Activites of the ***first Row*** will start from this
               Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_box_outlined),
                  label: Text('Break Fast '),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon:Icon(Icons.add_box_outlined),
                  label: Text('Lunch      ', textAlign: TextAlign.center,),
                ),
              ],
            ),
            //Second Row or Activities
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon:Icon(Icons.add_box_outlined),
                  label: Text(' Dinner      ',
                    textAlign: TextAlign.center,),
                              ),


                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_box_outlined),
                  label:Text(' Snack     ', textAlign: TextAlign.center,),
                ),
              ],
            ),
//second Row will End in this

          ],  //the chilren

       )


    );
  }}

