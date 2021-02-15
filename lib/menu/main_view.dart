import 'package:flutter/material.dart';
import 'package:widget_layouts/layouts/layouts_view.dart';
import 'package:widget_layouts/listview/listview.dart';
import 'package:widget_layouts/grid/grid_view.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          title: Text("Widget & Layouts"),
        ),
        body: new Container(
          child: ListView(
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text('Layouts'),
                  leading: Icon(Icons.layers),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LayoutsPage()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('List View'),
                  leading: Icon(Icons.list_alt),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListViewPage()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Grid'),
                  leading: Icon(Icons.grid_on),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GridViewPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
