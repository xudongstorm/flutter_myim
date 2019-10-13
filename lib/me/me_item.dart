import 'package:flutter/material.dart';
import 'package:flutter_myim/base/touch_callback.dart';

class MeItem extends StatelessWidget{

  String title;
  String imagePath;
  Icon icon;

  MeItem({Key key,@required this.title,this.imagePath,this.icon}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new TouchCallBack(
      onPressed: (){},
      child: new Container(
        height: 50.0,
        child: Row(
          children: <Widget>[
            Container(
              child: imagePath != null
                  ? Image.asset(
                imagePath,
                width: 32.0,
                height: 32.0,
              )
                  : SizedBox(
                height: 32.0,
                width: 32.0,
                child: icon,
              ),
              margin: EdgeInsets.only(left: 22.0, right: 20.0),
            ),
            Text(
              this.title,
              style: TextStyle(fontSize: 16.0,color: Color(0xFF353535)),
            )
          ],
        ),
      )
    );
  }
}