import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text('App')),
        body: Column(
          children: <Widget>[
            Text(
              '字體24 Underline',
              style: TextStyle(
                fontSize: 24,
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              '加粗',
              textScaleFactor: 1.8,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w200,
              ),
            ),
            Text(
              '文字溢出 多行',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            Text.rich(TextSpan(
                text: '拼接字符',
                style: TextStyle(color: Colors.blue),
                children: <TextSpan>[
                  TextSpan(
                    text: 'wang',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.brown,
                    ),
                  ),
                ])),
            Text.rich(TextSpan(
                text: 'aaaaaaa',
                style: TextStyle(
                  color: Colors.blue,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '交互測試',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.red,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('onTap');
                      },
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
