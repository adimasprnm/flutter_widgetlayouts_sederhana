import 'package:flutter/material.dart';

class TextViewPage extends StatefulWidget {
  @override
  _TextViewPageState createState() => _TextViewPageState();
}

class _TextViewPageState extends State<TextViewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          title: Text("Text Widget"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Card(
                  child: Text(
                    "INI ADALAH TEXT BIASA",
                  ),
                ),
                TextField(
                  decoration: new InputDecoration(
                      hintText: "INI ADALAH KOLOM TEXT FIELD",
                      labelText: "INI ADALAH TEXTFIELD",
                      icon: Icon(Icons.people)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
