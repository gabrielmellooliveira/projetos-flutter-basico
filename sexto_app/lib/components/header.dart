import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HeaderState();
  }
}

class HeaderState extends State<Header> {
  bool isVisualizar = false;

  void visualizar() {
    setState(() {
      isVisualizar = !isVisualizar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Opacity(
              opacity: isVisualizar ? 1 : 0.2,
              child: Text(
                isVisualizar ? '21 e-mails não lidos' : 'XX e-mails não lidos',
                style: TextStyle(fontSize: 20),
              )
          ),
          IconButton(onPressed: visualizar, icon: Icon(Icons.remove_red_eye_outlined))
        ],
      ),
    );
  }
}