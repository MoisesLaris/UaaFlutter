import 'package:flutter/material.dart';

class Location extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avisos'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          _cardTipo2(),
          _cardTipo3(),
          
        ],
      ),
    );    
  }
  Widget _cardTipo1(){
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.png'),
            image: NetworkImage("https://i.ytimg.com/vi/ocRCiQMRWTg/maxresdefault.jpg"),
            fadeInDuration: Duration(seconds: 1),
            height: 300,
            fit: BoxFit.cover
          ),
          // Image(
          //   image: NetworkImage("https://images.pexels.com/photos/1656579/pexels-photo-1656579.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
          // ),
          Container(
            child: Text('Congreso'),
            padding: EdgeInsets.all(10),
          )
          
        ],
      ),
    ); 
  }
  Widget _cardTipo2(){
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.png'),
            image: NetworkImage("https://sites.google.com/site/semblanzasciemns/_/rsrc/1496512569047/home/LOGO%20CIEMNS%202017.jpg"),
            fadeInDuration: Duration(seconds: 1),
            height: 300,
            fit: BoxFit.cover
          ),
          // Image(
          //   image: NetworkImage("https://images.pexels.com/photos/1656579/pexels-photo-1656579.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
          // ),
          Container(
            child: Text('Educacion musical'),
            padding: EdgeInsets.all(10),
          )
          
        ],
      ),
    ); 
  }
  Widget _cardTipo3(){
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.png'),
            image: NetworkImage("https://vinculacion.uaa.mx/incubadora/assets/images/eventos/uLmos8ORg4B12BgYd3f3aRZHaHf4GCioB4.jpg"),
            fadeInDuration: Duration(seconds: 1),
            height: 300,
            fit: BoxFit.cover
          ),
          // Image(
          //   image: NetworkImage("https://images.pexels.com/photos/1656579/pexels-photo-1656579.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
          // ),
          Container(
            child: Text('Segmentacion de mercado'),
            padding: EdgeInsets.all(10),
          )
          
        ],
      ),
    ); 
  }
}