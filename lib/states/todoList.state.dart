import 'package:flutter/foundation.dart';

@immutable
class TodoListState {
  
  final List<String> todoItems;

  const TodoListState({this.todoItems = const []});

  TodoListState copyWith({String todoItem}) {
    return new TodoListState(todoItems: List.from(todoItems)..add(todoItem));
  }

  List<String> get getTodoItems { return this.todoItems; }
  
}
