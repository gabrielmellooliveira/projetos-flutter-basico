import 'package:flutter/material.dart';

class EmailItem extends StatelessWidget {
  const EmailItem({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 8.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )
          ),
          Text(
            content,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ]
      ),
    );
  }
}