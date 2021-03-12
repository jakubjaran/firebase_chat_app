import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  MessageBubble(this.message, this.isMe, {key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: isMe ? Radius.circular(10) : Radius.circular(0),
              bottomRight: isMe ? Radius.circular(0) : Radius.circular(10),
            ),
            color: isMe
                ? Theme.of(context).primaryColor
                : Theme.of(context).accentColor,
          ),
          constraints: BoxConstraints(maxWidth: 200),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          child: Text(
            message,
            style: TextStyle(
              color: isMe
                  ? Theme.of(context).primaryTextTheme.bodyText1.color
                  : Theme.of(context).accentTextTheme.bodyText1.color,
            ),
          ),
        ),
      ],
    );
  }
}
