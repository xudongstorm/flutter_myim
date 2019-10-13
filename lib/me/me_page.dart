import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myim/me/me_item.dart';

class MePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MePageState();
  }
}

class MePageState extends State<MePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 12.0, right: 15.0),
                  child: Image.asset('images/yixiu.jpeg', width: 70.0, height: 70.0),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '一休',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF353535),
                        ),
                      ),
                      Text(
                        '账号 yixiu',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFFa9a9a9),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12.0, right: 15.0),
                  child: Image.asset(
                    'images/code.png',
                    width: 24.0,
                    height: 24.0,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: MeItem(
              title: '好友动态',
              imagePath: 'images/icon_me_friends.png',
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: MeItem(
              imagePath: 'images/icon_me_message.png',
              title: '消息管理',
            ),
          ),
          Container(
            color: Colors.white,
            child: MeItem(
              imagePath: 'images/icon_me_photo.png',
              title: '我的相册',
            ),
          ),
          Container(
            color: Colors.white,
            child: MeItem(
              imagePath: 'images/icon_me_file.png',
              title: '我的文件',
            ),
          ),
          Container(
            color: Colors.white,
            child: MeItem(
              imagePath: 'images/icon_me_service.png',
              title: '联系客服',
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: MeItem(
              title: '清理缓存',
              imagePath: 'images/icon_me_clear.png',
            ),
          ),
        ],
      )
    );
  }
}