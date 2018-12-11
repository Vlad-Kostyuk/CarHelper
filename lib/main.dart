import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_app/models/note.dart';
import 'package:flutter_app/utils/database_date_teahouse.dart';
import 'package:flutter_app/screens/note_list_date_teahouse.dart';
import 'package:flutter_app/screens/screen_distance.dart';
import 'package:flutter_app/screens/ExpansionTileSample.dart';
import 'package:flutter_app/screens/note_detail_date_teahouse.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/note_list_date_teahouse.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
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

      appBar: AppBar(title: Text('Car Helper')),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(child: new Text('Список запланованих техоглядів', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NoteList()),
                );
              },



            ),
            RaisedButton(
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(child: new Text('Пройдений кілометраж', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen_distance()),
                );
              },

            ),


            RaisedButton(
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(child: new Text('Список пройдених техоглядів', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpansionTileSample()),
                );
              },

            ),
          ],
        ),
      ),
    );
  }
}

