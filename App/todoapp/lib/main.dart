import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'To Do Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        color: Colors.yellow,
        home: DefaultTabController(
          length: 3,
          child: new Scaffold(
            body: TabBarView(
              children: [
                new Container(
                  color: Colors.yellow,
                ),
                new Container(
                  color: Colors.lightGreen,
                ),
                new Container(
                  color: Colors.red,
                ),
              ],
            ),
            appBar: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
                Tab(
                  icon: new Icon(Icons.perm_identity),
                ),
                Tab(
                  icon: new Icon(Icons.settings)
                  ,)
              ],
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.red,
            ),
            backgroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
