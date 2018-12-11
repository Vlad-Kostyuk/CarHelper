import 'package:flutter/material.dart';
import 'package:flutter_app/screens/note_list.dart';
import 'package:flutter_app/screens/note_detail.dart';

void main() {
	runApp(MyApp());
}

class MyApp extends StatelessWidget {

	@override
  Widget build(BuildContext context) {

    return MaterialApp(
	    title: 'Екран №2',
	    debugShowCheckedModeBanner: false,
	    theme: ThemeData(
				// ignore: argument_type_not_assignable
					primarySwatch: Colors.green
	    ),
	    home: NoteList(),
    );
  }
}