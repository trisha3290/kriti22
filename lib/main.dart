import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/type_of_shop.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/pages/restaurant.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: TypeScreen.id,
      routes: {
         TypeScreen.id: (context)=> TypeScreen(),
         RestaurantScreen.id: (context)=> RestaurantScreen(),
         //StationaryScreen.id: (context)=> StationaryScreen(),
        // HomeScreen.id: (context)=> HomeScreen(),
        // menu.id:(context) => menu(),
      },
    );
  }
}