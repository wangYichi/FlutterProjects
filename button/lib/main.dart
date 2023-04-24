import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //後退、關閉
          BackButton(
            color: Colors.orange,
          ),
          CloseButton(),

          //帶框按鈕
          OutlinedButton.icon(
            onPressed: () {},
            label: Text('帶框圖標按鈕'),
            icon: Icon(
              Icons.accessible,
              size: 18.0,
            ),
          ),
          //Material 按鈕
          MaterialButton(
            child: Text('Material按鈕'),
            onPressed: () {},
          ),
          //浮動 按鈕
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.accessible))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.accessible,
          ),
        ),
        appBar: AppBar(
          title: Text('Button 組件'),
        ),
        body: _buildBody(),
      ),
    );
  }
}
