import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';

class IntrayToDo extends StatelessWidget{
  final String title;
  final String keyValue;
  IntrayToDo({this.keyValue, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue),
      margin: EdgeInsets.only(bottom:5), // outside of container
      padding: EdgeInsets.all(15), // inside of container
      height:70,
      decoration: BoxDecoration(
      color: lightGreyColor,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        new BoxShadow(
          color: Colors.black.withOpacity(0.3),
          blurRadius: 5.0,
          offset: Offset(
            5.0, // horizontal, move right 10
            5.0, // vertical, move down 10
          ),
        )
      ]
      ),
      child: Row(
        children: <Widget> [
          Radio(


          ),
          Column(
            children: <Widget>[
              Text (title, style: darkToDoTitle,)
            ],
          )
        ]
      )
    );
  }


}