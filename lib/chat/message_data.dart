enum MessageType {SYSTEM,PUBLIC,CHAT,GROUP}

// 聊天数据
class MessageData {
  // 头像
  String avatar;
  // 主标题
  String title;

  // 子标题
  String subTitle;
  // 消息时间

  DateTime time;

  // 消息类型
  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle,this.time,this.type);

}
List<MessageData> messageData =[
  new MessageData('images/loading.png', '哆啦A梦', '机器猫！！！', new DateTime.now(),MessageType.CHAT),
  new MessageData('images/loading.png', '一休哥', '突然想到的！！！', new DateTime.now(),MessageType.CHAT)
];