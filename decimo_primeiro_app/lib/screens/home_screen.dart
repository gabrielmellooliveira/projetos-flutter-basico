import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final imagePicker = ImagePicker();

  File? file;

  void pickImage(ImageSource source) async {
    XFile? imageFile = await imagePicker.pickImage(source: source);

    setState(() {
      file = File(imageFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.blue,
              width: 300,
              height: 300,
              child: Center(
                child: file != null ? Image.file(file!) : Text('Sem foto'),
              ),
            ),
            ElevatedButton(
                onPressed: () { pickImage(ImageSource.camera); },
                child: Text('Tirar foto')
            ),
            ElevatedButton(
                onPressed: () { pickImage(ImageSource.gallery); },
                child: Text('Carregar foto')
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    file = null;
                  });
                },
                child: Text('Remover foto')
            )
          ],
        ),
      ),
    );
  }
}