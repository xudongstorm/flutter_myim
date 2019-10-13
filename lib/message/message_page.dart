import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myim/message/message_data.dart';
import 'package:flutter_myim/message/message_item.dart';

class MessagePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MessagePageState();
  }
}

class MessagePageState extends State<MessagePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (BuildContext context, int index){
          return new MessageItem(messageData[index]);
        }
      ),
    );
  }
}