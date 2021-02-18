import 'package:flutter/material.dart';

class ScrollViewPage extends StatefulWidget {
  @override
  _ScrollViewPageState createState() => _ScrollViewPageState();
}

class _ScrollViewPageState extends State<ScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.height;
    return SafeArea(
      child: new Scaffold(
        appBar: AppBar(
          title: Text("Scroll View with Grid"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 500,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.yellowAccent,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.green,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.yellowAccent,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.green,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    child: GridView.count(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      crossAxisCount: 3,
                      childAspectRatio:
                          widthScreen / heightScreen, // ubah kode ini
                      children: <Widget>[
                        Container(
                          color: Colors.yellowAccent,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.blueAccent,
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.brown,
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.orange,
                          child: Center(
                            child: Text(
                              "4",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          child: Center(
                            child: Text(
                              "5",
                              style: TextStyle(fontSize: 24.0),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "6",
                              style: TextStyle(
                                  fontSize: 24.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Card(
                          child: Text("Nama lengkap :"),
                        ),
                        Card(
                          child: Text("Tempat tanggal lahir :"),
                        ),
                        Card(
                          child: Text("Jenis Kelamin :"),
                        ),
                        Card(
                          child: Text("Alamat :"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    child: GridView.count(
                      scrollDirection: Axis.horizontal,
                      crossAxisCount: 1,
                      children: List.generate(25, (index) {
                        return Container(
                          child: Card(
                            child: Text("Data Dummy"),
                            color: Colors.white,
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
