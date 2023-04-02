import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LFilterChip(),
));



class LFilterChip extends StatefulWidget {
  @override
  _LFilterChipState createState() => new _LFilterChipState();

}

class _LFilterChipState extends State<LFilterChip> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          backgroundColor: Colors.grey[900],
          appBar: AppBar(
              backgroundColor: Colors.grey[800],
              title: Text('Bottom Navigation Bar'),
              centerTitle: true,
          ),

        body: Center(
        child: ListView.builder(
        itemCount: _dataList.length,
        itemBuilder: (BuildContext context, int index) => FilterChip(
      label: Text(_dataList[index]),
      onSelected: (bool value) {
        if (selected.contains(index)) {
          selected.remove(index);
        } else {
          selected.add(index);
        }
        setState(() {});
      },
      selected: selected.contains(index),
      selectedColor: Colors.deepOrange,
      labelStyle: TextStyle(
        color: Colors.white,
      ),
      backgroundColor: Colors.green,
    ),
    ),
        ),
      ),
    );
  }
    var _dataList = [
    'Choice 1',
    'Choice 2',
    'Choice 3',
    'Choice 4',
    'Choice 5',
    'Choice 6',
    'Choice 7',
    'Choice 8'
  ];
  var selected = [];
}

