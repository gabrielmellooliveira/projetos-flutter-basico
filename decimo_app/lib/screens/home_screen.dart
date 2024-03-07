import 'package:decimo_app/screens/edit_note.dart';
import 'package:decimo_app/services/note_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/note_item.dart';
import '../models/note.dart';
import 'form_note.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = false;
  List<Note> notes = [];
  List<NoteItem> noteItems = [];

  void deleteNote(String id) async {
    NoteService service = NoteService();
    await service.deleteNote(id);
  }

  void loadNotes() async {
    setState(() {
      loading = true;
      noteItems = [];
    });

    NoteService service = NoteService();
    final notesResponse = await service.getNotes();

    List<NoteItem> noteItemsComponents = notesResponse.map((note) {
      return NoteItem(
        title: note.title,
        description: note.description,
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => EditNote(note: note)
              )
          );
        },
        onDelete: () {
          deleteNote(note.id!);
        },
      );
    }).toList();

    setState(() {
      loading = false;
      noteItems = noteItemsComponents;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: loadNotes,
                  child: loading
                      ? SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator())
                      : Text('Carregar notas'),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => FormNote()
                          )
                      );
                    },
                    child: Text('Nova nota')
                ),
              ],
            ),
            Expanded(child:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: noteItems
              ),
            )
          ],
        ),
      ),
    );
  }
}