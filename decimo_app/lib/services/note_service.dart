import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/note.dart';

class NoteService {
  String url = 'https://keep-api-ffmo.onrender.com';

  // Método responsável por buscar as notas (GET /notes)
  Future<List<Note>> getNotes() async {
    http.Response response = await http.get(Uri.parse('$url/notes'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      List<Note> notes = List<Note>.from(json.map((note) {
        return Note.fromJson(note);
      }));

      return notes;
    } else {
      throw Exception('Failed to load notes');
    }
  }

  // Método responsável por criar uma nova nota (POST /notes)
  Future<void> createNote(Note note) async {
    http.Response response = await http.post(Uri.parse('$url/notes'), body: {
      'title': note.title,
      'description': note.description,
      'color': note.color,
    });

    if (response.statusCode != 201 && response.statusCode != 200) {
      throw Exception('Failed to create note');
    }
  }

  // Método responsável por atualizar uma nota (PUT /notes?id={id})
  Future<void> updateNote(Note note) async {
    http.Response response = await http.put(Uri.parse('$url/notes?id=${note.id}'), body: {
      'title': note.title,
      'description': note.description,
      'color': note.color,
    });

    if (response.statusCode != 200) {
      throw Exception('Failed to update note');
    }
  }

  // Método responsável por deletar uma nota (DELETE /notes?id={id})
  Future<void> deleteNote(String id) async {
    http.Response response = await http.delete(Uri.parse('$url/notes?id=$id'));

    if (response.statusCode != 200) {
      throw Exception('Failed to delete note');
    }
  }
}