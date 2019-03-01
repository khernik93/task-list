import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:todolist/screens/todolist/todolist.screen.dart';
import 'package:todolist/screens/loading.screen.dart';
import 'package:todolist/states/app.state.dart';

class App extends StatelessWidget {

  final Store<AppState> store;
  
  App({Key key, this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: new MaterialApp(
        title: 'Todo list',
        home: new TodoListScreen()
      )
    );
  }

}
