import 'package:flutter/material.dart';

class Questions extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Servicios'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          _cardTipo1(),
          _cardTipo1(),
          _cardTipo1(),
          _cardTipo1(),
        ],
      ),
    );
  }


  Widget _cardTipo1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
          ),
          ListTile(
            leading: Icon(
              Icons.chat_bubble,
              color: Colors.blue,
            ),
            title: Text("¿Laboris excepteur?"),
            subtitle: Text(
                'Eiusmod sint id do laborum adipisicing quis reprehenderit minim elit commodo non nisi sint. Qui deserunt enim excepteur pariatur aute eu exercitation elit excepteur. Enim dolor ea nostrud laboris exercitation non.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton(onPressed: () {}, child: Text('Detalle')),
                  FlatButton(onPressed: () {}, child: Icon(Icons.star_border)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
  
}