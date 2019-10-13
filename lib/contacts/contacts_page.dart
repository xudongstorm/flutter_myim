import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myim/contacts/contact_data.dart';
import 'package:flutter_myim/contacts/contact_header.dart';
import 'package:flutter_myim/contacts/contact_item.dart';
import 'package:flutter_myim/contacts/contact_list.dart';

class ContactsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ContactPageState();
  }
}

class ContactPageState extends State<ContactsPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ContactList(
        items: contactData,
        headerBuilder: (context ,index){
          return Container(
            child: ContactsHeaderView(),
          );
        },
        itemBuilder: (context, index){
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(
              item: contactData[index],
            ),
          );
        },
        sectionBuilder: (context, index){
          return Container(
            height: 32.0,
            padding: const EdgeInsets.only(left:14.0),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            //显示字母
            child: Text(
              contactData[index].seationKey,
              style: TextStyle(fontSize: 14.0,color: Color(0xff909090)),
            ),
          );
        }
    );
  }
}