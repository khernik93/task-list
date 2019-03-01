import 'package:flutter/foundation.dart';

typedef void AddTodoItem(String todoItem);

@immutable
class TodoListModel {
  
  final List<String> todoItems;
  final AddTodoItem addTodoItem;

  const TodoListModel({@required this.todoItems, @required this.addTodoItem});
  
}
