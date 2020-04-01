import 'package:flutter/material.dart';
import 'models/global.dart';

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
    return MaterialApp(
        color: Colors.yellow,
        home: SafeArea(
          child: DefaultTabController(
            length: 3,
            child: new Scaffold(
              body: Stack(
                children: <Widget>[
                  TabBarView(
                  children: [
                    new Container(
                      color: Colors.white,
                    ),
                    new Container(
                      color: Colors.white,
                    ),
                    new Container(
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 40,bottom: 30),
                  height:130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                      ),
                    color: const Color.fromARGB(0XFF,0X33, 0X66, 0X8B),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("In-tray", style: TitleStyle,),
                      Container()
                    ],
                  )
                ),
                Container(
                  height: 50,
                  width: 130,
                  margin: EdgeInsets.only(top: 102, left: MediaQuery.of(context).size.width*0.5-65),
                  child: FloatingActionButton(
                    child: Container(
                    child: Icon(Icons.add, size:50, ),
                    ),
                    backgroundColor: const Color.fromARGB(0XFF,0X7A, 0XDA, 0XCC),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                )
                ]
              ),
              appBar: AppBar(
                elevation: 0,
                title: new TabBar(
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
                  unselectedLabelColor: Colors.white30,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorPadding: EdgeInsets.all(5.0),
                  indicatorColor: Colors.transparent,
                ),
                backgroundColor: const Color.fromARGB(0XFF,0X33, 0X66, 0X8B),
              ),
              backgroundColor: const Color.fromARGB(0XFF,0X33, 0X66, 0X8B),
            ),
          ),
        ),
    );
  }
}
