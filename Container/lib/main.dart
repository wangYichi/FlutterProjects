import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 300,
            height: 150,
            margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
            padding: EdgeInsets.all(20),
            child: Text('data'),

            //裝飾
            decoration: BoxDecoration(
              color: Colors.amber,
              //圓角
              borderRadius: BorderRadius.all(Radius.circular(10)),
              //漸變
              gradient: RadialGradient(
                colors: [Colors.red, Colors.orange],
                center: Alignment.topLeft,
                radius: .98,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  offset: Offset(0, 2),
                  color: Colors.blue,
                ),
              ],
              //背景圖
              image: DecorationImage(image: AssetImage(''), fit: BoxFit.cover),
              //形狀
              shape: BoxShape.circle,
            ),
            //旋轉
            transform: Matrix4.rotationZ(0.1),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button 組件'),
        ),
        body: _buildBody(),
      ),
    );
  }
}
