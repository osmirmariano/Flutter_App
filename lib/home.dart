import 'package:flutter/material.dart';
import 'botoes.dart';

class HomePage extends StatefulWidget{
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Widgets App'),
        backgroundColor: Colors.red,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Osmir Mariano'),
              accountEmail: new Text('osmirmariano@uft.edu.br'),
              currentAccountPicture: new GestureDetector(
                onTap: () => print('Toque na imagem'),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage('https://raw.githubusercontent.com/osmirmariano/osmirmariano.github.io/master/img/portifolio.jpg?token=ALJepvZzIfeKR4NT6AzH-Oo_Dsh88oqKks5bzHr_wA%3D%3D')
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage('https://raw.githubusercontent.com/osmirmariano/osmirmariano.github.io/master/img/portifolio.jpg?token=ALJepvZzIfeKR4NT6AzH-Oo_Dsh88oqKks5bzHr_wA%3D%3D')
                ),                
              ),
            ),
            new ListTile(
              title: new Text("Botões"),
              trailing: new Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();//Para não chamar o menu
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new BotoesPage()));//Para chamar uma page
              },
            ),
            new ListTile(
              title: new Text('Listas'),
              trailing: new Icon(Icons.arrow_forward),
            ),
            new Divider(),
            new ListTile(
              title: new Text('Card'),
              trailing: new Icon(Icons.arrow_forward),
            ),
          ]
        ),
      ),
      body:  new Center(
        child: new Text('Olá Mundo')
      ),
    );
  }
}