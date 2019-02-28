import 'package:redux_persist/redux_persist.dart';

import 'package:todolist/models/app.state.dart';

AppState appReducer(AppState state, action){
  
  if (action is PersistLoadedAction<AppState>) {
    return action.state ?? state;
  } else {
    return new AppState();
  }

}
