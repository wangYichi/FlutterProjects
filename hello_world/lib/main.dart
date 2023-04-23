import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        drawer: Drawer(
          child: Text('側邊攔'),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Image.asset('assets/nft.png'),
            Text(
              'hello world',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22.0,
              ),
            ),
            Text('hello world'),
          ]),
        )),
  ));
}
