import 'package:flutter/material.dart';
import 'package:flutter_app/screens/note_list_date_teahouse.dart';

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

          child: new Container(
            //width: 100.0,
            height: 50.0,
            decoration: new BoxDecoration(
              color: Colors.blueAccent,
              border: new Border.all(color: Colors.white, width: 2.0),
              borderRadius: new BorderRadius.circular(10.0),
            ),
            child: new Center(child: new Text('Перейти до Техоглядів', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
          ),
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


