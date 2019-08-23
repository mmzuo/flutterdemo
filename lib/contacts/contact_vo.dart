import 'package:flutter/material.dart';

class ContactVO {
  // 字母排列值
  String seationKey;
  // 名称
  String name;
  // 头像url
  String avatarUrl;
  // 构建函数
  ContactVO({@required this.seationKey, this.name, this.avatarUrl});
}
List<ContactVO> contactData =[
  new ContactVO(
    seationKey: 'A',
    name: 'A 张三',
    avatarUrl: 'images/loading.png',
  ),
  new ContactVO(
    seationKey: 'A',
    name: '李四',
    avatarUrl: 'images/loading.png',
  ),
  new ContactVO(
    seationKey: 'B',
    name: '王二',
    avatarUrl: 'images/loading.png',
  ),
  new ContactVO(
    seationKey: 'C',
    name: '麻子',
    avatarUrl: 'images/loading.png',
  )
];