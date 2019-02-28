import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';

import 'package:todolist/screens/todolist/todolist.screen.dart';
import 'package:todolist/screens/loading.screen.dart';
import 'package:todolist/models/app.state.dart';
import 'package:todolist/middleware/middleware.dart';
import 'package:todolist/store/store.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final store = createStore();
  
  MyApp();

  @override
  Widget build(BuildContext context) {
    return new PersistorGate(
      persistor: persistor,
      loading: new LoadingScreen(),
      builder: (context) => new StoreProvider<AppState>(
        store: store,
        child: new MaterialApp(
          title: 'Todo list',
          home: new TodoListScreen()
        )
      )
    );
  }

}
