import 'package:todolist/states/todoList.state.dart';
import 'package:todolist/actions/todoList.actions.dart';

TodoListState todoListReducer(TodoListState todoList, action) {
  
  if (action is AddTodoItem) {
    return todoList.copyWith(todoItem: action.todoItem);
  }

  return todoList;

}
