import 'package:meta/meta.dart';

@immutable
class AppState {

  AppState();

  static AppState rehydrationJSON(dynamic json) => new AppState();

  @override
  String toString() {
    return '''AppState{}''';
  }
  
}
