import 'package:flutter/material.dart';

class BotoesPage extends StatefulWidget{
  BotoesPageState createState() => new BotoesPageState();
}

class BotoesPageState extends State<BotoesPage>{
  Widget build (BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Botões Page'),
        backgroundColor: Colors.red,
      ),
    );
  }
}