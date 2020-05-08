import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addFunction;

  NewTransaction(this.addFunction);

  void onSumbit() {
    final title = titleController.text;
    final amount = double.parse(amountController.text);
    if (title.isEmpty || amount <= 0) {
      return;
    }
    addFunction(title, amount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  controller: titleController,),
              TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  controller: amountController),
              FlatButton(
                child: Text('Add Transaction'),
                textColor: Colors.purple,
                onPressed: onSumbit,
              ),
            ],
          ),
        ));
  }
}
