import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/menu.dart';

class MyCustomForm extends StatefulWidget {
@override
_MyCustomFormState createState() => _MyCustomFormState();
}
class _MyCustomFormState extends State<MyCustomForm> {
final GlobalKey<FormState> _formKey = GlobalKey();
String food = "";
String price = "";
void _submit() {
	// you can write your
	// own code according to
	// whatever you want to submit;
  print(food);
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => menu(item:food,price: price,)),
 );
}

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: Text("Edit menu"),
	),
	body: Padding(
		padding: const EdgeInsets.all(16.0),
		child: Column(
		children: <Widget>[
			Form(
			key: _formKey,
			child: Column(
				children: <Widget>[
				TextFormField(
					decoration: InputDecoration(labelText: 'food item'),
					//keyboardType: TextInputType.emailAddress,
					onChanged: (value) {
            food = value;
					},
				),
				// this is where the
				// input goes
				TextFormField(
					decoration: InputDecoration(labelText: 'price of the item'),
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly] ,
          //inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
					onChanged: (value) {
					price = value;
					print(price);
					},
				),
				MaterialButton(
					onPressed: _submit,
					child: Text("submit"),
          color: Colors.amberAccent,
				),
				],
			),
			),
			// this is where
			// the form field
			// are defined
			SizedBox(
			height: 20,
			),
			
		],
		),
	),
	);
}
}
