import 'package:flutter/material.dart';
import 'widgets/todolist/todolist.widget.dart';

class TodoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo list')),
      body: new TodoListWidget()
    );
  }
}
