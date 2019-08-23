import 'package:flutter/material.dart';
import 'package:flutterdemo/chat/message_data.dart';
import 'package:date_format/date_format.dart';
import 'package:flutterdemo/common/touch_callback.dart';

class MessageItem extends StatelessWidget {
  final MessageData message;
  MessageItem(this.message);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
      height: 64.0,
      child: TouchCallBack(
        onPressed: () {
          
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // 展示头像
            Container(
              margin: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Image.asset(message.avatar, width: 48.0, height: 48.0),
            ),
            Expanded(
                // 主标题和子主题采用垂直布局
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  message.title,
                  style: TextStyle(fontSize: 16.0, color: Colors.black38),
                  maxLines: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                ),
                Text(
                  message.subTitle,
                  style: TextStyle(fontSize: 14.0, color: Colors.black45),
                  maxLines: 1,
                  // 显示不完的文本用省略号表示
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )),
            Container(
              // 时间顶部对齐
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(right: 12.0, top: 12.0),
              child: Text(
                formatDate(message.time, [HH, ':', nn, ":", 'ss']).toString(),
                style: TextStyle(fontSize: 14.0, color: Color(0xffa9a9a9)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
