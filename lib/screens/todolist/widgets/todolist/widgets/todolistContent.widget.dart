import 'package:flutter/material.dart';

class TodolistContentWidget extends StatelessWidget {

  final String widgetContent;

  TodolistContentWidget({Key key, @required this.widgetContent}) : super(key: key);

  @override
  Widget build(context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widgetContent,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

}
