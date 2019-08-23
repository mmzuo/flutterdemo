import 'package:flutter/material.dart';
import 'package:flutterdemo/contacts/contact_vo.dart';
class ContactItem extends StatelessWidget{
// 好友数据VO
final ContactVO item;
// 标题名
final String titleName;
// 图片路径
final String imageName;
ContactItem({this.item, this.titleName, this.imageName});
//渲染好友列表项
@override
Widget build(BuildContext context) {
  //列表项容器
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border(bottom: BorderSide(width: 0.5,color: Colors.black12)),
    ),
    height: 52.0,
    child: FlatButton(
      onPressed: (){

      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          imageName == null ?Image.asset(item.avatarUrl != '' ? 
          'images/loading.png': 'images/loading.png',
          width: 36.0, 
          height:36.0,
          scale: 0.9,
          ) : Image.asset(imageName,
          width: 36.0,
          height: 36.0,
          ),
          // 展示名称或标题
          Container(
            margin: const EdgeInsets.only(left: 12.0),
            child: Text(titleName == null ? item.name ?? '暂时': titleName,
              style: TextStyle(fontSize: 18.0, color: Colors.black45),
              maxLines: 1,
            ),
          )
        ],
      ),
    ),
  );
}
}