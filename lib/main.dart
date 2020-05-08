import 'package:flutter/material.dart';

import './widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void startAddNewTransaction(BuildContext context) {
    showModalBottomSheet(context: context, builder: (builderContext) {
      return Text("Got here");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter App'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => print("Got here"),
        ),
      ]),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                width: double.infinity,
                child: Card(
                    color: Colors.blue, elevation: 5, child: Text('Chart'))),
            UserTransactions()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: () => print("got here")),
    );
  }
}