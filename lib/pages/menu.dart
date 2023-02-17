import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class menu extends StatefulWidget {
  final String item;
  final String price;
  const menu({Key? key, required  this.item, required this.price}) : super(key: key);
  //static String id="menu";
  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  int count=0;
  int c1=0,c2=0,c3=0,c4=0;


  @override
  Widget build(BuildContext context) {
    late Map<String, int> cart_items= {'Sandwich': c1*30, 'Noodles': c2*50, 'Pizza': c3*200};
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('My Menu')),
        backgroundColor: Colors.lightBlueAccent[100],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile( //use onTap method for click functionality
              title: Text(widget.item),
              tileColor: Colors.greenAccent,
              subtitle: Text(widget.price),
              onTap: () {
                setState(() {count++;});
                setState(() {c4++;});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile( //use onTap method for click functionality
              title: Text('Sandwich'),
              tileColor: Colors.greenAccent,
              subtitle: Text('Price: Rs30'),
              onTap: () {
                setState(() {count++;});
                setState(() {c1++;});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Noodles'),
              tileColor: Colors.greenAccent,
              subtitle: Text('Price: Rs50'),
              onTap: () {
                setState(() {count++;});
                setState(() {c2++;});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Pizza'),
              tileColor: Colors.greenAccent,
              subtitle: Text('Price: Rs200'),
              onTap: () {
                setState(() {count++;});
                setState(() {c3++;});
              },
            ),
          ),
          
        ],
      ),
      
    );
  }
}
