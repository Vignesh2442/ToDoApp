import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/widgets/intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => new _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:160.0,bottom:0.0,left:0.0,right:0.0),
      color: Colors.white70,
      child: ListView(
        children: getList(),
      ),
    );

  }

  List<Widget> getList() {
    List <IntrayToDo> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(IntrayToDo());
    }
    return list;
  }


}


