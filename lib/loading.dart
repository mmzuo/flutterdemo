import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingState createState() => new _LoadingState();
}

class _LoadingState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    // 在加载页面停顿3秒
    new Future.delayed(Duration(seconds: 3), () {
      print('flutter 即时通讯App界面实现……');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.asset("images/loading.png", fit: BoxFit.cover)
          ],
        ),
      ),
    );
  }
}
