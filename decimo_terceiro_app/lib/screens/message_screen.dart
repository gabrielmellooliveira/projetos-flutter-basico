import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  MessageScreen({
    required this.title,
    required this.description
  });

  final String title;
  final String description;

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Titulo: ${widget.title}'),
            Text('Descricao: ${widget.description}'),
          ],
        ),
      ),
    );
  }
}