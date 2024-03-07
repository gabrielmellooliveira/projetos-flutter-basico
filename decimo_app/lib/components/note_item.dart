import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  NoteItem({
    required this.title,
    required this.description,
    required this.onTap,
    required this.onDelete,
  });

  final String title;
  final String description;
  final void Function() onTap;
  final void Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 300),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(fontSize: 20)),
                      Text(description, style: TextStyle(fontSize: 16), overflow: TextOverflow.ellipsis),
                    ]
                ),
              ),
              IconButton(
                  onPressed: onDelete,
                  icon: Icon(Icons.delete, color: Colors.red)
              )
            ],
          )
        ),
      ),
    );
  }
}