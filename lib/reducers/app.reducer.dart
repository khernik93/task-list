import 'package:redux_persist/redux_persist.dart';

import 'package:todolist/states/app.state.dart';
import 'package:todolist/actions/todoList.actions.dart';
import 'package:todolist/reducers/todoList.reducer.dart';

AppState appReducer(AppState state, action) =>
  new AppState(todoListState: todoListReducer(state.todoListState, action));
