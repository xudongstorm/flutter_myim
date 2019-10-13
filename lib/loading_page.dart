import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoadingState();
  }
}

class LoadingState extends State<LoadingPage>{
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacementNamed("app");
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Image.asset(
        "images/loading.jpeg",
        fit: BoxFit.cover,
      ),
    );
  }
}