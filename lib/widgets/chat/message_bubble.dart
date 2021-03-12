import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;

  MessageBubble(this.message);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).accentColor,
          ),
          constraints: BoxConstraints(maxWidth: 200),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Text(
            message,
            style: TextStyle(
              color: Theme.of(context).accentTextTheme.bodyText1.color,
            ),
          ),
        ),
      ],
    );
  }
}
