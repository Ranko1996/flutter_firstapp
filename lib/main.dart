import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
     Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 13.53,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: const Card(
                elevation: 5,
                child: Text('Chart!'),
              ),
            ),
            const Card(
              child: Text('LIst of tx'),
            )
          ],
        ));
  }
}