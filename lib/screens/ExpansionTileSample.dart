import 'package:flutter/material.dart';

class ExpansionTileSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Список пройдених техоглядів'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
        ),
      ),
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'передпродажний техогляд',
    <Entry>[
      Entry(
        'Дата: ',
        <Entry>[
          Entry('12.10.2016 '),
        ],
      ),
      Entry('Пройдений кілометраж на даний техогляд: ',
          <Entry>[
            Entry('0 km'),
          ]),
      Entry('Зроблена робота:',
          <Entry>[
            Entry('Було зроблено повний техогляд автомобіля.'),
          ]),
    ],
  ),

  Entry(
    'Плановий  техогляд №1',
    <Entry>[
      Entry(
        'Дата: ',
        <Entry>[
          Entry('12.10.2017'),
        ],
      ),
      Entry('Пройдений кілометраж на даний техогляд: ',
          <Entry>[
            Entry('30 000 km'),
          ]),
      Entry('Зроблена робота:',
          <Entry>[
            Entry('Інформація: було замінено мастило в двигуні.'),
          ]),
    ],
  ),
  Entry(
    'Плановий  техогляд №2',
    <Entry>[
      Entry(
        'Дата: ',
        <Entry>[
          Entry('12.10.2018 '),
        ],
      ),
      Entry('Пройдений кілометраж на даний техогляд: ',
          <Entry>[
            Entry('65 000 km'),
          ]),
      Entry('Зроблена робота:',
          <Entry>[
            Entry('Інформація: було замінено мастило в двигуні,а ткож заміна мастила в коропці.'),
          ]),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

void main() {
  runApp(ExpansionTileSample());
}
