import 'package:flutter/material.dart';
import 'package:nutritionexpertone/nutrients.dart';
import 'package:nutritionexpertone/Login.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
  ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context)      {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text('Bottom Navigation Bar'),
          centerTitle: true,


         actions:[
           PopupMenuButton<String>(
             itemBuilder: (BuildContext context) {
               return <PopupMenuEntry<String>>[
                 PopupMenuItem<String>(
                   value: 'menu_item_1',
                   child: Row(
                     children: [
                       Icon(Icons.calendar_month,
                       color: Colors.blue,
                       ),
                       SizedBox(width: 8),
                       Text('Calendar'),
                     ],
                   ),
                   onTap: () {
                     // Do something when menu item 1 is selected
                     Navigator.push(context ,MaterialPageRoute(
                         builder: (context) => LFilterChip()),
                     );

                   },
                 ),
                 PopupMenuItem<String>(
                   value: 'menu_item_2',
                   child: Row(
                     children: [
                       Icon(Icons.perm_device_information_outlined,
                       color: Colors.blue
                       ),
                       SizedBox(width: 8),
                       Text('About us'),
                     ],
                   ),
                   onTap: () {
                     // Do something when menu item 2 is selected
                     print('Menu Item 2 was selected');
                     Navigator.push(context ,MaterialPageRoute(
                         builder: (context) => LLoginScreen1()),
                     );

                   },
                 ),
                 PopupMenuItem<String>(
                   value: 'menu_item_3',
                   child: Row(
                     children: [
                       Icon(Icons.share,
                       color: Colors.blue,),
                       SizedBox(width: 5),
                       Text('Share'),
                     ],
                   ),
                   onTap: () {
                     // Do something when menu item 3 is selected
                     print('Menu Item 3 was selected');
                   },
                 ),
               ];
             },
             onSelected: (String selectedValue) {
               // Do something when a menu item is selected
               print('Selected item: $selectedValue');
             },
           )

         ]
        ),


//----------------------------------------------------------------------------------------------------------------------------------------
        body: Center(

          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightBlue,

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
              color: Colors.black,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood_rounded,color: Colors.black,),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.black,),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.feedback,color: Colors.black,),
              label: 'feedback',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List<Widget> _widgetOptions = <Widget>[


//----------------------------------------------------------------------------------------------------------------------------------------


    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
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
          color: Colors.blueGrey,

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
              onPressed: () {
                print('bf pressed');
              },
              icon: Icon(Icons.add_box_outlined),
              label: Text('Break Fast '),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(10,100),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('lunch pressed');
              },
              icon:Icon(Icons.add_box_outlined),
              label: Text('Lunch      ', textAlign: TextAlign.center),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(10, 100),
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
                minimumSize: Size(10,100),
              ),
            ),


            ElevatedButton.icon(
              onPressed: () {
                print('snack chossed');

              },
              icon: Icon(Icons.add_box_outlined),
              label:Text(' Snack     ', textAlign: TextAlign.center,),

              style: ElevatedButton.styleFrom(
                minimumSize: Size(10,100),
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


      ],
    ),

//----------------------------------------------------------------------------------------------------------------------------------------
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.search),
        Text('Search'),
      ],
    ),



//----------------------------------------------------------------------------------------------------------------------------------------

    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Icon(Icons.person),
        Text('Profile'),
      ],
    ),

//----------------------------------------------------------------------------------------------------------------------------------------

    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            // Do something when the icon is pressed
            // Navigator.push(
            //   context ,
            //   MaterialPageRoute(builder: (context) => LFilterChip()
            //   ),
            // );
          },
          child: Icon(Icons.feedback),
        ),
        Text('Feedback'),
      ],
    ),

//----------------------------------------------------------------------------------------------------------------------------------------

    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            // Do something when the icon is pressed
            print('Icon pressed!');
          },
          child: Icon(Icons.fastfood),
        ),
        Text('Recipes'),
      ],
    ),


  ];

}