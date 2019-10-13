import 'package:flutter/material.dart';
import 'package:flutter_myim/contacts/contact_data.dart';
import 'package:flutter_myim/contacts/contact_header.dart';

class ContactList extends StatefulWidget{

  //好友列表项数据
  final List<ContactData> items;
  //好友列表头构造器
  final IndexedWidgetBuilder headerBuilder;
  //好友列表项构造器
  final IndexedWidgetBuilder itemBuilder;
  //字母构造器
  final IndexedWidgetBuilder sectionBuilder;

  //构造方法
  ContactList({
    Key key,
    @required this.items,
    this.headerBuilder,
    @required this.itemBuilder,
    @required this.sectionBuilder,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ContactListState();
  }
}

class ContactListState extends State<ContactList>{

  final ScrollController _scrollController = new ScrollController();

  bool _onNotification(ScrollNotification notification) {
    return true;
  }

  Widget _shouldShowHeader(int position){
    if(position==0 && widget.headerBuilder!=null){
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context, position),
      );
    }
    return Container();
  }

  Widget _shouldShowLetter(int position){
    bool _disableLetter = true;
    if(position>0 && widget.sectionBuilder!=null){
      if(widget.items[position].seationKey != widget.items[position-1].seationKey){
        _disableLetter = !_disableLetter;
      }
    }else if(position<=0){
      _disableLetter = !_disableLetter;
    }
    return Offstage(
      offstage: _disableLetter,
      child: widget.sectionBuilder(context, position),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: NotificationListener(
        onNotification: _onNotification,
        child: new ListView.builder(
          controller: _scrollController,
          itemCount: widget.items.length,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index){
            return Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: <Widget>[
                  _shouldShowHeader(index),
                  _shouldShowLetter(index),
                  widget.itemBuilder(context, index),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}