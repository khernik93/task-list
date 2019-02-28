import 'package:redux/redux.dart';

import 'package:todolist/reducers/app.reducer.dart';
import 'package:todolist/models/app.state.dart';
import 'package:todolist/middleware/middleware.dart';

Store<AppState> createStore() { 
  Store<AppState> store = new Store(
    appReducer,
    initialState: new AppState(),
    middleware: createMiddleware(),
  );
  persistor.start(store);

  return store;
}
