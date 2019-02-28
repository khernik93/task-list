import 'package:flutter/material.dart';
import 'widgets/todolistTitle.widget.dart';
import 'widgets/todolistContent.widget.dart';

class TodoListWidget extends StatefulWidget {
  @override
  createState() => new TodoListWidgetState();
}

class TodoListWidgetState extends State<TodoListWidget> {
  List<String> _todoItems = [];

  void _addTodoItem() {
    setState(() {
      int index = _todoItems.length;
      _todoItems.add('Item ' + index.toString());
    });
  }

  List<Widget> _buildTodoList() {
    List<Widget> todoWidgets = [];
    for (var todoItem in _todoItems) {
      todoWidgets.add(_buildTodoItem(todoItem));
    }
    return todoWidgets;
  }

  Widget _buildTodoItem(String todoText) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(32),
          child: new TodolistTitleWidget()
        ),
        Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 0),
          color: Colors.black12,
          child: new TodolistContentWidget(widgetContent: todoText)
        ),
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: _buildTodoList()
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _addTodoItem,
        tooltip: 'Add task',
        child: new Icon(Icons.add)),
    );
  }

}
