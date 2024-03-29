import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
    
  LoadingScreen({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new CircularProgressIndicator(
            backgroundColor: Colors.grey,
            strokeWidth: 2.0
          ),
        ),
      ),
    );
  }

}
