import 'package:flutter/material.dart';

class TodolistTitleWidget extends StatelessWidget {

  @override
  Widget build(context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Todo item",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
        Icon(
          Icons.account_box,
          color: Colors.red[500],
        )
      ],
    );
  }

}
