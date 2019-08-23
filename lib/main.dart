import 'package:flutter/material.dart';
import 'loading.dart';
import 'app.dart';
//import 'search.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '聊天室',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Color(0xffebebeb),
        cardColor: Colors.green
      ),
      routes: <String,WidgetBuilder>{
        "app":(BuildContext context) => new App(),
        "/friends":(_) => new WebviewScaffold(
          // Webview 插件
          url: "https://flutter.io/",
          appBar: new AppBar(
            title: new Text('flutter 官网'),
          ),
          withZoom: true,
          withLocalStorage: true,
        //  'search': (BuildContext context) => new Search()
        )
      },
      home: new LoadingPage(),

    );
  }
}