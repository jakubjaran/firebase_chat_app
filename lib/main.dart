import 'package:flutter/material.dart';

import 'package:firebase_chat_app/screens/auth_screen.dart';
import 'package:firebase_chat_app/screens/chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: AuthScreen(),
    );
  }
}
