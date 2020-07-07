import 'package:app1/locations.dart';
import 'package:app1/questions.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
        '/dashboard': (BuildContext context) => new Dashboard(),
        '/questions': (BuildContext context) => new Questions(),
        '/locations': (BuildContext context) => new Location()
      },
      home: login(),
    );
  }
}

