import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_application_1/pages/restaurant.dart';
class TypeScreen extends StatefulWidget {
  static String id='type_screen';
  @override
  _TypeScreenState createState() => _TypeScreenState();
}

class _TypeScreenState extends State<TypeScreen> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campus Catalogue'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  // child: Image.asset('assets/images/logo.png'),
                  height: 60.0,
                ),
                SizedBox(
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [TyperAnimatedText(' Kriti')],
                      // textStyle: TextStyle(
                      //   fontSize: 45.0,
                      //   fontWeight: FontWeight.w900,
                      // ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                   onPressed: () {
                     Navigator.pushNamed(context, RestaurantScreen.id);
                   },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Restaurant',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                // child: MaterialButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, Stationary.id);
                //   },
                //   minWidth: 200.0,
                //   height: 42.0,
                //   child: Text(
                //     'Register',
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}