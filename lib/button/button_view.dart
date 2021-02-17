import 'package:flutter/material.dart';

class ButtonViewPage extends StatefulWidget {
  @override
  _ButtonViewPageState createState() => _ButtonViewPageState();
}

class _ButtonViewPageState extends State<ButtonViewPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showScaffold(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  bool isSwitched = false;

  List<bool> _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          title: Text("Button Page"),
        ),
        body: new Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text('ini adalah Flat button'),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text('Default Enabled'),
                onPressed: () {},
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.deepPurpleAccent,
                child: Text('Ini adalah snack bar'),
                onPressed: () {
                  _showScaffold(
                    "YAHAHAHAHAHA HAYUKKKK",
                  );
                },
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              ToggleButtons(
                children: <Widget>[
                  Icon(Icons.add_comment),
                  Icon(Icons.airline_seat_individual_suite),
                  Icon(Icons.add_location),
                ],
                isSelected: _selections,
                onPressed: (int index) {
                  setState(() {
                    _selections[index] = !_selections[index];
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
