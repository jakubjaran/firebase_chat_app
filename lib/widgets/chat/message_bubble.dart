import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final String username;

  MessageBubble(this.message, this.isMe, this.username, {key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
              bottomLeft: isMe ? Radius.circular(14) : Radius.circular(0),
              bottomRight: isMe ? Radius.circular(0) : Radius.circular(14),
            ),
            color: isMe
                ? Theme.of(context).primaryColor
                : Theme.of(context).accentColor,
          ),
          constraints: BoxConstraints(maxWidth: 200),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
          child: Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: TextStyle(
                  fontSize: 12,
                  color: isMe
                      ? Theme.of(context).primaryTextTheme.bodyText1.color
                      : Theme.of(context).accentTextTheme.bodyText1.color,
                ),
              ),
              SizedBox(height: 4),
              Text(
                message,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: isMe
                      ? Theme.of(context).primaryTextTheme.bodyText1.color
                      : Theme.of(context).accentTextTheme.bodyText1.color,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
