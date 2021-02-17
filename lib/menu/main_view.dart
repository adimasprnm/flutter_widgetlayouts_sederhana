import 'package:flutter/material.dart';
import 'package:widget_layouts/button/button_view.dart';
import 'package:widget_layouts/layouts/layouts_view.dart';
import 'package:widget_layouts/listview/listview.dart';
import 'package:widget_layouts/grid/grid_view.dart';
import 'package:widget_layouts/scrollview/scroll_view.dart';
import 'package:widget_layouts/tabbar/tabbar_view.dart';
import 'package:widget_layouts/text_textfield/text_view.dart';
import 'package:widget_layouts/table/table_view.dart';
import 'package:widget_layouts/tooltip/tooltip_view.dart';

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
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text('Layouts Page'),
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
                  title: Text('List View Page'),
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
                  title: Text('Grid View Page'),
                  leading: Icon(Icons.grid_on),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GridViewPage()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Text View Page'),
                  leading: Icon(Icons.text_format),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TextViewPage()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Button view page'),
                  leading: Icon(Icons.smart_button_sharp),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ButtonViewPage()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Table View Page'),
                  leading: Icon(Icons.table_chart_outlined),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TableViewPage()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Tooltip View Page'),
                  leading: Icon(Icons.shop_two_outlined),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TooltipPage()),
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Tab bar View Page'),
                  leading: Icon(Icons.tab),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => TabViewPage()),
                    // );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Scroll View Page'),
                  leading: Icon(Icons.swap_vertical_circle_outlined),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScrollViewPage()),
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
