import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';

import 'package:todolist/screens/todolist/todolist.screen.dart';
import 'package:todolist/screens/loading.screen.dart';
import 'package:todolist/states/app.state.dart';
import 'package:todolist/states/todoList.state.dart';
import 'package:todolist/reducers/app.reducer.dart';
import 'package:todolist/app.dart';

void main() {
  final Store store = Store<AppState>(appReducer,
    initialState: new AppState(todoListState: new TodoListState()));

  runApp(App(store: store));
}
