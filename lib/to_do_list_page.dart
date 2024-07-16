import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  _ToDoListPageState createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  TextEditingController _textEditingController = TextEditingController();

  List<String> listaDeTarefas = [];

  @override
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
          child: Column(children: [
            TextField(
              controller: _textEditingController,
            ),
            Container(
              height: 300,
              child: ListView.separated(itemBuilder: (context, index) => Divider(),
                  separatorBuilder: (context, index){
                    return ListTile(
                      title: Text(listaDeTarefas[index]),
                      onLongPress: () {
                        setState(() {
                          listaDeTarefas.removeAt(index);
                        });
                      },
                    );
                  },
                  itemCount: listaDeTarefas.length),
            )
          ])),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                listaDeTarefas.add(_textEditingController.text);
                _textEditingController.clear();
              });
            },
          ),
          FloatingActionButton(
            backgroundColor: Colors.redAccent,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                listaDeTarefas.clear();
              });
            },
          )
        ],
      ),
    );
  }
}
