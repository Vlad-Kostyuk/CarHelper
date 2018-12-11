import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_app/models/note.dart';
import 'package:flutter_app/utils/database_date_teahouse.dart';
import 'package:flutter_app/screens/note_list_date_teahouse.dart';
import 'package:flutter_app/screens/note_detail_date_teahouse.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
void main() {
  runApp(MaterialApp(

    home: FirstScreen(),
  ));
}

class MyApp extends StatelessWidget {

	@override
  Widget build(BuildContext context) {

    return MaterialApp(
	    debugShowCheckedModeBanner: false,
	    theme: ThemeData(
		    primarySwatch: Colors.green
	    ),
	    home: NoteList(),

    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        title: Text('Car Helper'),

      ),
      body: Center(

        child: RaisedButton(
          child: Text('Перейти ло техоглядів'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NoteList()),
            );
          },
        ),
      ),
    );
  }
}



