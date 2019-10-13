import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_myim/base/touch_callback.dart';

class Search extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SearchState();
  }
}

class SearchState extends State<Search>{

  FocusNode focusNode = new FocusNode();

  _requestFocus(){
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }

  _getText(String text){
    return TouchCallBack(
      onPressed: (){},
      child: Text(
        text,
        style: TextStyle(fontSize: 14.0, color: Color(0xff1aad19)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        margin: EdgeInsets.only(top: 35.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                TouchCallBack(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: new Container(
                    height: 45.0,
                    margin: EdgeInsets.only(left: 12.0, right: 10.0),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: new Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom : BorderSide(width: 1.0, color: Colors.green)
                      )
                    ),
                    child: TextField(
                      focusNode: _requestFocus(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                      onChanged: (String text){},
                      decoration: InputDecoration(
                        hintText: '搜索',
                        border: InputBorder.none
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.mic,
                    color: Color(0xffaaaaaa),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: Text(
                '常用搜索',
                style: TextStyle(fontSize: 16.0, color: Color(0xffb5b5b5)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText('朋友'),
                  _getText('聊天'),
                  _getText('群组'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText('Flutter'),
                  _getText('Dart'),
                  _getText('C++'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}