import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _buildBody() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
        ],
      );

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
        ],
      );
    }

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row Column'),
        ),
        body: const Center(
          child: _buildBody(),
        ),
      ),
    );
  }
}
