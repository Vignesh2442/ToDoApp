import 'package:flutter/material.dart';
import 'package:todoapp/classes/task.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/widgets/intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => new _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<Task> taskList =[];
  @override
  Widget build(BuildContext context) {
    taskList = getList();
    return Container(
      color: greyBackground,
      child: Container(
        margin: EdgeInsets.only(left:15, right: 15), // outside of container
        padding: EdgeInsets.only(top:160.0,bottom:0.0,left:0.0,right:0.0),
        color: greyBackground,
        child: _buildReorderableListSimple(context)
//        children: todoItems,
//        onReorder: _onReorder,
//      ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key(item.taskId),
      title: IntrayToDo(                              // list that contains the widgets
        title: item.title,
      )
    );
  }
  Widget _buildReorderableListSimple(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: greyBackground,
      ),
        child: ReorderableListView(
          // handleSide: ReorderableListSimpleSide.Right,
          // handleIcon: Icon(Icons.access_alarm),
          padding: EdgeInsets.only(top: 20.0),
          children: taskList.map((Task item) => _buildListTile(context, item)).toList(), // build list of todo items
          onReorder: (oldIndex, newIndex) {
            setState(() {
              Task item = taskList[oldIndex];
              taskList.remove(item);
              taskList.insert(newIndex, item);
            });
          },
        ),
      );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Task item = taskList.removeAt(oldIndex);
      taskList.insert(newIndex, item);
    });
  }

  List<Task> getList() {
    for (int i = 0; i < 10; i++) {
      taskList.add(Task("My first todo" + i.toString(), false, i.toString()));
    }
    return taskList;
  }


}


