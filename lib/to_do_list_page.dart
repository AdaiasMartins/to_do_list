import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  _ToDoListPageState createState() => _ToDoListPageState();
}

  class _ToDoListPageState extends State<ToDoListPage> {
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('To Do List'),
          backgroundColor: Theme.of(context).primaryColor,
          decoration: const BoxDecoration(
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              TextField(),
            ]
          )
        )
        );
    }
  }