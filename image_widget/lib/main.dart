import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _assetImg = 'assets/nft.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text('App')),
        body: Column(
          children: <Widget>[
            Text('image'),
            //Image.asset(_assetImg),
            //Image.network('src'),
            /*
            Image(
              image: NetworkImage('url'),
              width: 200,
              
            )
            */
            /*
            Text('占位圖'),
            FadeInImage(
                fadeInCurve: Curves.bounceIn,
                placeholder: _assetImg,
                image: NetworkImage('url'))
            */
            /*
              Text('圓形頭像'),
              CircleAvatar(
                backgroundColor: Colors.brown,
                child: Text('頭像'),
                backgroundImage: AssetImage(_assetImg),
                radius: 20.0,
              )
              */
            /*
            Text('圖標'),
            ImageIcon(
              AssetImage(_assetImg),
              size: 200,
              color: Colors.brown,
            )
            */
            /*
            Text('ClipRRect圓角'),
            ClipRRect(
              child: Image(image: AssetImage(_assetImg)),
              width: 300,
            ),
            BorderRadius: BorderRadius.all(Radius.circular(20)),
            */
            /*
            Text('圓角矩形框'),
            Container(
              width: 300,
              height: 120,
              color: Colors.blueGrey,
              decoration: BoxDecoration(
                shape:BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(_assetImg),
                  fit: BoxFit.cover,
                ),
              ),
            */
          ],
        ),
      ),
    );
  }
}
