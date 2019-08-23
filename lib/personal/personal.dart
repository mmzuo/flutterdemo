import 'package:flutter/material.dart';
import 'package:flutterdemo/common/touch_callback.dart';
import '../common/im_item.dart';

class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          // 头像部分
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: TouchCallBack(
              onPressed: (){

              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // 添加头像
                  Container(
                    margin: const EdgeInsets.only(left: 12.0,right: 15.0),
                    child: Image.asset('images/loading.png',
                    width: 70.0,
                    height: 70.0,),
                  ),
                  // 用户名及账号显示
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '张三',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff353535),
                          ),
                        ),
                        Text(
                          '账号zhangsan',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xffa9a9a9),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12.0,right: 15.0),
                    child: Image.asset(
                      'images/loading.png',
                      width:24.0,
                      height:24.0
                    ),
                  )
                ],
              ),
            ),
          ),
          // 列表项
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: MeItem(
              title:'好友动态',
              imagePath:'images/loading.png'
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                MeItem(
                  imagePath: 'images/loading.png',
                  title: '消息管理',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                MeItem(
                  imagePath: 'images/loading.png',
                  title: '我的相册',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                MeItem(
                  imagePath: 'images/loading.png',
                  title: '我的文件',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                MeItem(
                  imagePath: 'images/loading.png',
                  title: '联系客服',
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child:MeItem(
              title: '清理缓存',
              imagePath: 'images/loading.png',
            ),
          )

        ],
      ),
    );
  }
}