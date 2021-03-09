import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) => Text('TEST'),
        itemCount: 5,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          FirebaseFirestore.instance
              .collection('chats/QeLTMEDt6rL08KR7pJmG/messages')
              .snapshots()
              .listen((data) {
            data.docs.forEach((doc) {
              print(doc['text']);
            });
          });
        },
      ),
    );
  }
}
