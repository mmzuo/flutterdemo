import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/chat/message_data.dart';
import 'package:flutterdemo/chat/message_item.dart';
// 聊天主页面
class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => new _MessagePageState();
}
class _MessagePageState extends State<MessagePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (BuildContext context, int index) {
          return new MessageItem(messageData[index]);
        },
      ),
    );
  }
}