import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

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
          centerTitle: true,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                UserAccountsDrawerHeader(
                    accountName: Text("Adaias Martins"),
                    accountEmail: Text("adaiasteste@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text("AM"),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                )
              ],
            ),
          ),
        body: Container(
          padding: const EdgeInsets.all(24),
          child: const Column(
            children: [
              TextField(),
            ]
          )
        )
        );
    }
  }