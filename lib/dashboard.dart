import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState () => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  Material MyItems(IconData icon,String heading,int color, String ruta){
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(heading,
                    style: TextStyle(
                      color: new Color(color),
                      fontSize: 20.0,
                    ),
                    ),
                  ),

                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('/${ruta}');                        
                      },
                      child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar: AppBar (
        title: Text('App Preguntas',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        ),
        body: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0 , vertical: 8.0),
          children: <Widget>[
            MyItems(Icons.map,"Avisos", 0xffed622b, "locations"),
            MyItems(Icons.question_answer, "Preguntas", 0xff26cb3c, "questions"),
            MyItems(Icons.attach_money, "Becas", 0xffff3260, "questions"),
            MyItems(Icons.fitness_center, "Deportes", 0xff3399fe, "questions"),
            MyItems(Icons.settings, "Configuracion", 0xfff4c83f, "questions"),
            MyItems(Icons.help_outline, "Ayuda", 0xff622F74, "questions"),
            MyItems(Icons.account_circle, "Iniciar sesion", 0xff7297ff, "questions"),
            MyItems(Icons.streetview, "Servicios",  0xffff339f, "questions"),
          ],
          staggeredTiles: [
            StaggeredTile.extent(2, 130.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 312.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(2, 150.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(2, 240.0),
          ],
          )
    );
  }
}