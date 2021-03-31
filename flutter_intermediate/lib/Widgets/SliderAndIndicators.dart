import 'dart:ffi';

import 'package:flutter/material.dart';
void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}
class MyApp extends StatefulWidget{
  @override
  _State createState()=>new _State();
}

class _State extends State<MyApp>{
  double _value=0.0;
  void _onChanged(double value){
    setState(() {
      _value=value;
    });
  }
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter App'),
        ),
        body: new Container(
          child: new Center(
            child: new Column(
              children: [
               new Slider(
                   value: _value,
                   onChanged: _onChanged),
                new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new LinearProgressIndicator(
                    value: _value,
                    valueColor: new AlwaysStoppedAnimation(Colors.yellow),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new CircularProgressIndicator(
                    value: _value,
                    valueColor: new AlwaysStoppedAnimation(Colors.yellow),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}