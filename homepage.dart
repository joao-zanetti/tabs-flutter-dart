/*
    Developed by João Zanetti
    https://github.com/joao-zanetti
*/

import 'package:flutter/material.dart';
//COMENTED

class HomePage extends StatefulWidget{

  var myUser;

  //RECEIVE CURRENT USER DATA
  HomePage([myUser]){ 
    this.myUser=myUser;
  }

  @override
  State<StatefulWidget> createState() {
    return _HomePageState(myUser);
  }
}


class _HomePageState extends State<HomePage>{

  //CURRENT USER DATA
  var myUser;

  //SET CURRENT USER DATA
  _HomePageState(this.myUser);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:Column(
      children: <Widget>[
        //add here the widgets
      ]
    )
    );
  }
}