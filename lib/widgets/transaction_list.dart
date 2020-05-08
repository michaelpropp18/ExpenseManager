import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      height: double.infinity,
      child: ListView(
        children: transactions.map((t) {
          return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: Theme.of(context).primaryColor)),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text('\$${t.amount.toStringAsFixed(2)}',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    padding: EdgeInsets.all(10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        t.title,
                        style: Theme.of(context).textTheme.title,
                      ),
                      Text(DateFormat('M/d/y').format(t.date),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                ],
              ),
              color: Colors.white);
        }).toList(),
      ),
    );
  }
}
