import 'package:flutter/material.dart';
import './chat/message_page.dart';
import './contacts/contacts.dart';
import './personal/personal.dart';
class App extends StatefulWidget {
  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {
// 当前索引
  var _currentIndex = 0;

  MessagePage message;

  Contacts contacts;
  Personal me;
   currentPage(){
     switch(_currentIndex) {
       case 0:
       if(message == null) {
         message= new MessagePage();
         
       }
       return message;
       case 1:
       if(contacts == null) {
         contacts = new Contacts();
       }
       return contacts;
       case 2:
       if(me == null) {
         me = new Personal();
       }
       return me;
     }
   }
  // popumentItem
  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          // 判断是使用图表还是图标
          imagePath != null
              ? Image.asset(
                  imagePath,
                  width: 32.0,
                  height: 32.0,
                )
              : SizedBox(
                  width: 32.0,
                  height: 32.0,
                  child: Icon(icon, color: Colors.white),
                ),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: new Text(title, style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }

  // barBottom
  _barBottom(String title, String imagePath1, String imagePath2, num index) {
    return BottomNavigationBarItem(
        title: new Text(
          title,
          style: TextStyle(
            color:
                _currentIndex == index ? Color(0xff46c01b) : Color(0xff999999),
          ),
        ),
        icon: _currentIndex == index
            ? Image.asset(imagePath1, width: 32.0, height: 28.0)
            : Image.asset(imagePath2, width: 32.0, height: 28.0));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('即时通讯'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              // 跳转至搜索页面
              Navigator.of(context).pushNamed('search');
            },
            child: Icon(Icons.search),
          ),
          Padding(
            // 左右内边距
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                showMenu(
                  context: context,
                  // 定位在界面的右上角
                  position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                  items: <PopupMenuEntry>[
                    _popupMenuItem('发起会话', icon: Icons.chat),
                    _popupMenuItem('添加好友', imagePath: 'images/loading.png'),
                    _popupMenuItem('联系客服', icon: Icons.contacts)
                  ],
                );
              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _barBottom('聊天', 'images/loading.png', 'images/loading.png', 0),
          _barBottom('好友', 'images/loading.png', 'images/loading.png', 1),
          _barBottom('我的', 'images/loading.png', 'images/loading.png', 2),
        ],
      ),
      body: currentPage()
    );
  }
}
