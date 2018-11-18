import 'package:flutter/material.dart';

void main() => runApp(Car_mechanick());

class Car_mechanick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final appTitle = 'Car Mechanick';

    return MaterialApp(

      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          backgroundColor: Colors.green,
        ),
        body: CustomFormSTO(),
      ),
    );
  }
}
//colors


class CustomFormSTO extends StatefulWidget {
  @override
  FormFillingSto createState() {
    return FormFillingSto();
  }
}


class FormFillingSto extends State<CustomFormSTO> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {

              if (value.isEmpty) {
                return 'Будь-ласка,ведіть текс!';
              }
            },
          ),




          Padding(

          padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(

              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Запис тесту першого поля')));
              }
              },
              child: Text('Додати'),
            ),

          ),
//2
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Будь-ласка,ведіть текс в 2 полі!';

              }
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Запис тесту другого поля')));
                }
              },
              child: Text('Додати'),
            ),
          ),

        ],
      ),
    );
  }
}