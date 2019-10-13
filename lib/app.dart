import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myim/contacts/contacts_page.dart';
import 'package:flutter_myim/me/me_page.dart';
import 'package:flutter_myim/message/message_page.dart';

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AppState();
  }
}

class AppState extends State<App>{

  var _currentIndex = 0;
  MessagePage messagePage;
  ContactsPage contactsPage;
  MePage mePage;

  _popupMenuItem(String title, {String imagePath, IconData icon}){
    return PopupMenuItem(
      child: new Row(
        children: <Widget>[
          imagePath!=null ? Image.asset(imagePath, width: 32.0, height: 32.0,)
              : SizedBox(width: 32.0, height: 32.0, child: Icon(icon, color: Colors.white),),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget currentPage() {
    switch (_currentIndex) {
      case 0 :
        if (messagePage == null) {
          messagePage = new MessagePage();
        }
        return messagePage;
      case 1:
        if (contactsPage == null) {
          contactsPage = new ContactsPage();
        }
        return contactsPage;
      case 2:
        if (mePage == null) {
          mePage = new MePage();
        }
        return mePage;
      default:
        return messagePage;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('即时通讯'),
        actions: <Widget>[
          new GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(
              Icons.search,
            ),
          ),
          new Padding(
              padding: EdgeInsets.only(left: 30.0,right: 20.0),
              child: GestureDetector(
                onTap: (){
                  showMenu(
                      context: context,
                      position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                      items: <PopupMenuEntry>[
                        _popupMenuItem('发起会话',
                            imagePath: 'images/icon_menu_group.png'),
                        _popupMenuItem('添加好友',
                            imagePath: 'images/icon_menu_addfriend.png'),
                        _popupMenuItem('联系客服', icon: Icons.person),
                      ]
                  );
                },
                child: Icon(
                  Icons.add,
                ),
              ),
          )
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: new Text(
              '聊天',
              style: TextStyle(color: _currentIndex==0 ? Color(0xFF46c01b) : Color(0xff999999)),
            ),
              icon: _currentIndex==0 ? Image.asset('images/message_pressed.png', width: 32.0, height: 28.0) : Image.asset('images/message_normal.png', width: 32.0, height: 28.0)
          ),
          BottomNavigationBarItem(
              title: Text(
                '好友',
                style: TextStyle(color: _currentIndex==1 ? Color(0xFF46c01b) : Color(0xff999999)),
              ),
              icon: _currentIndex==1 ? Image.asset('images/contact_list_pressed.png', width: 32.0, height: 28.0,) : Image.asset('images/contact_list_normal.png', width: 32.0, height: 28.0)
          ),
          BottomNavigationBarItem(
              title: Text(
                '我的',
                style: TextStyle(
                    color: _currentIndex==2 ? Color(0xFF46c01b) : Color(0xff999999)),
              ),
              icon: _currentIndex==2 ? Image.asset('images/profile_pressed.png', width: 32.0, height: 28.0) : Image.asset('images/profile_normal.png', width: 32.0, height: 28.0)
          ),
        ],
      ),
      body: currentPage(),
    );
  }
}