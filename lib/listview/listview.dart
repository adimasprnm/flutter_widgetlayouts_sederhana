import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => new _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          title: Text("List View sederhana"),
        ),
        body: new Container(
          child: ListView(
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text('Diluc'),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/diluc.png'),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Jean'),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/jean.png'),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Klee'),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/klee.png'),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Chongyun'),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/chongyun.png'),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Bennett'),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img/bennett.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
