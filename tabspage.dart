/*
    Developed by João Zanetti
    https://github.com/joao-zanetti
*/
import 'package:flutter/material.dart';
import './homepage.dart';
import './page2.dart';


class TabsPage extends StatefulWidget{

  var myUser;

  //RECEIVE CURRENT USER DATA
  TabsPage([myUser]){
    this.myUser=myUser;
  }

  @override
  State<StatefulWidget> createState() {
    return _TabsPageState(myUser);
  }
}

class _TabsPageState extends State<TabsPage> with SingleTickerProviderStateMixin{
  
  //CURRENT USER DATA
  var myUser;

  //SET CURRENT USER DATA
  _TabsPageState(this.myUser);

  TabController controller;
  
  @override
  void initState() {
    super.initState();
    controller= new TabController(vsync: this, length: 2);
  }

  

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple
        ),
        home:Scaffold(
          appBar: PreferredSize(preferredSize: Size(100,65), child: Container(
            decoration: BoxDecoration( border: Border(bottom: BorderSide( color: Colors.grey[200], width: 2.0))),
            child:TabBar(
              indicatorWeight: 10,
              labelPadding: EdgeInsets.all(40),
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.grey[400],
              indicatorColor: Colors.transparent,
              indicatorPadding: EdgeInsets.only(top: 30),
              controller: controller,
              tabs: <Tab>[
                Tab(icon: Icon(Icons.account_circle, size: 32)),
                Tab(icon: Icon(Icons.wc,size: 32))        
                //,if you want more screens add here
              ],
            )),) ,
          body:Container(
            padding: EdgeInsets.all(10),
            child: TabBarView(
              controller: controller,
              //TABS SCREENS ROUTES
              children: <Widget>[
                HomePage(myUser),
                Page2(myUser)
                //,if you want more screens add here
              ],
            )
          ) 
        )
      );
    }
}
