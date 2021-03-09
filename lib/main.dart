import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import './screens/chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: ChatScreen(),
    );
  }
}
