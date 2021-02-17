import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabViewPage extends StatefulWidget {
  TabViewPage({Key key}) : super(key: key);

  @override
  _TabViewPageState createState() => _TabViewPageState();
}

class _TabViewPageState extends State<TabViewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.android),
                text: "Tab 1",
              ),
              Tab(
                icon: Icon(Icons.phone_iphone),
                text: "Tab 2",
              ),
            ],
          ),
          title: Text("Halaman Tab Bar"),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Page 1")),
            Center(child: Text("Page 2")),
          ],
        ),
      ),
    );
  }
}
