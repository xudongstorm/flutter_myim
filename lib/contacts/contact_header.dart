import 'package:flutter/material.dart';
import 'package:flutter_myim/contacts/contact_item.dart';

class ContactsHeaderView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        ContactItem(titleName:'新的好友',imageName:'images/icon_addfriend.png'),
        ContactItem(titleName:'公共聊天室',imageName:'images/icon_groupchat.png'),
      ],
    );
  }
}