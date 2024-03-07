import 'package:decimo_app/services/note_service.dart';
import 'package:flutter/material.dart';

import '../models/note.dart';

class EditNote extends StatefulWidget {
  EditNote({
    required this.note,
  });

  final Note note;

  @override
  _EditNoteState createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _colorController = TextEditingController();

  bool loading = false;

  @override
  void initState() {
    super.initState();

    _titleController.text = widget.note.title;
    _descriptionController.text = widget.note.description;
    _colorController.text = widget.note.color;
  }

  void updateNote() async {
    setState(() {
      loading = true;
    });

    if (_formKey.currentState!.validate()) {
      NoteService service = NoteService();

      Note note = Note(
        id: widget.note.id,
        title: _titleController.text,
        description: _descriptionController.text,
        color: _colorController.text,
      );

      await service.updateNote(note);
    }

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar nota'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Título',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Descrição',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _colorController,
                decoration: InputDecoration(
                  labelText: 'Cor',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: updateNote,
                child: loading
                    ? SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(),
                )
                    : Text('Editar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}