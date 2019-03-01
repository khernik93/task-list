import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'widgets/todolistTitle.widget.dart';
import 'widgets/todolistContent.widget.dart';
import 'package:todolist/actions/todoList.actions.dart';
import 'package:todolist/models/todoList.model.dart' as models;
import 'package:todolist/states/app.state.dart';

class TodoListWidget extends StatelessWidget {

  void _addTodoItem(model) {
    int index = model.todoItems.length;
    model.addTodoItem('Item ' + index.toString());
  }

  List<Widget> _buildTodoList(model) {
    List<Widget> todoWidgets = [];
    for (var todoItem in model.todoItems) {
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
    return StoreConnector<AppState, models.TodoListModel>(
      converter: (store) => models.TodoListModel(
        todoItems: store.state.todoListState.todoItems,
        addTodoItem: (String todoItem) => store.dispatch(
          AddTodoItem(todoItem)
        )
      ),
      builder: (context, model) => new Scaffold(
        body: Column(
          children: _buildTodoList(model)
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () => _addTodoItem(model),
          tooltip: 'Add task',
          child: new Icon(Icons.add),
        )
      )
    );
  }

}
