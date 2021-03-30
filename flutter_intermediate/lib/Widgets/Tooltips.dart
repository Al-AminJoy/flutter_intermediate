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
  String _value='';
  void _onClick(){
    setState(() {
      _value='Clicked';
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
               new Text(_value),
                new IconButton(
                    icon:new Icon(Icons.message),
                    onPressed: _onClick,
                  tooltip:'Click Me',
                )
              ],
            ),
          ),
        ),
      );
  }
}