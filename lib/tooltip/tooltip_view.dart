import 'package:flutter/material.dart';

class TooltipPage extends StatefulWidget {
  @override
  _TooltipPageState createState() => _TooltipPageState();
}

class _TooltipPageState extends State<TooltipPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          title: Text(
            "Halaman Tooltip",
          ),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                  message: 'My Account',
                  child: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.account_box,
                      size: 50,
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
