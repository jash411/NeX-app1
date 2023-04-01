import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
  ));

//----------------------------------------------------------------------------------------------------------------
class Nutrition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Nutrition Expert  '),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),


        body: Column(  //main column of the whole home interface
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [// this is the main children for the whole interface

            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'menu_item_1',
                    child: Text('Menu Item 1'),
                  ),
                  PopupMenuItem<String>(
                    value: 'menu_item_2',
                    child: Text('Menu Item 2'),
                  ),
                  PopupMenuItem<String>(
                    value: 'menu_item_3',
                    child: Text('Menu Item 3'),
                  ),
                ];
              },
              onSelected: (String value) {
                // Handle menu item selection here
                print('Selected: $value');
              },
            ),



            Text('Summary',
            style: TextStyle(
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


//Nutrinet part will start on this
        Text('Nutrients',textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
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
                 style: ElevatedButton.styleFrom(
                   minimumSize: Size(10,190),
                 ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon:Icon(Icons.add_box_outlined),
                  label: Text('Lunch      ', textAlign: TextAlign.center),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(10, 190),
                ),
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

                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(10,190),
                  ),
                              ),


                ElevatedButton.icon(
                  onPressed: () {
                    print('snack chossed');

                  },
                  icon: Icon(Icons.add_box_outlined),
                  label:Text(' Snack     ', textAlign: TextAlign.center,),

                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(10,190),
                  ),
                ),
              ],
            ),
//second Row will End in this

        Text('Activities',textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_box_outlined),
                  label: Text('Add'),
                ),

              ],
            ),

          ],  //the children ending part

       ) //the ending of the main columns


    );
  }}


//----------------------------------------------------------------------------------------------------------







class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Search Page'),
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bottom Navigation Bar Demo',
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text('Bottom Navigation Bar'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [// this is the main children for the whole interface
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'menu_item_1',
                    child: Text('Menu Item 1'),
                  ),
                  PopupMenuItem<String>(
                    value: 'menu_item_2',
                    child: Text('Menu Item 2'),
                  ),
                  PopupMenuItem<String>(
                    value: 'menu_item_3',
                    child: Text('Menu Item 3'),
                  ),
                ];
              },
              onSelected: (String value) {
                // Handle menu item selection here
                print('Selected: $value');
              },
            ),



            Text('Summary',
              style: TextStyle(
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


//Nutrinet part will start on this
            Text('Nutrients',textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
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
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(10,190),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon:Icon(Icons.add_box_outlined),
                  label: Text('Lunch      ', textAlign: TextAlign.center),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(10, 190),
                  ),
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

                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(10,190),
                  ),
                ),


                ElevatedButton.icon(
                  onPressed: () {
                    print('snack chossed');

                  },
                  icon: Icon(Icons.add_box_outlined),
                  label:Text(' Snack     ', textAlign: TextAlign.center,),

                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(10,190),
                  ),
                ),
              ],
            ),
//second Row will End in this

            Text('Activities',textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_box_outlined),
                  label: Text('Add'),
                ),

              ],
            ),

          ],  //the children ending part

        ), //the ending of the main columns

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
    ),
    );
  }

}