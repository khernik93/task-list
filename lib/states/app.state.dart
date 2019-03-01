import 'package:flutter/foundation.dart';
import 'todoList.state.dart';

@immutable
class AppState {
  
  final TodoListState todoListState;

  const AppState({@required this.todoListState});
  
}
