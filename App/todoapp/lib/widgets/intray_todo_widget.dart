import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';

class IntrayToDo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:15,left:15, right: 15),
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
    );
  }


}