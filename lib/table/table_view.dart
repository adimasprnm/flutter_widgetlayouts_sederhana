import 'package:flutter/material.dart';

class TableViewPage extends StatefulWidget {
  @override
  _TableViewPageState createState() => _TableViewPageState();
}

class _TableViewPageState extends State<TableViewPage> {
  double iconSize = 40;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          title: Text("Halaman Table"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Icon(
                        Icons.account_box,
                        size: iconSize,
                      ),
                      Text('My Account')
                    ]),
                    Column(children: [
                      Icon(
                        Icons.settings,
                        size: iconSize,
                      ),
                      Text('Settings')
                    ]),
                    Column(children: [
                      Icon(
                        Icons.lightbulb_outline,
                        size: iconSize,
                      ),
                      Text('Ideas')
                    ]),
                  ]),
                  TableRow(children: [
                    Icon(
                      Icons.cake,
                      size: iconSize,
                    ),
                    Icon(
                      Icons.voice_chat,
                      size: iconSize,
                    ),
                    Icon(
                      Icons.add_location,
                      size: iconSize,
                    ),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
