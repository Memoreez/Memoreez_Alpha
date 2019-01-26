import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/home.dart';
import './pages/upload.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _posts = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      initialRoute: '/',


      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),


      //route settings 
      routes: {
        '/': (context) => AuthPage(),
        '/home': (context) => HomePage(),
        '/upload': (context) => Upload(),
      },
      onGenerateRoute: (RouteSettings settings){

      },
      onUnknownRoute: (RouteSettings settings){
        //return MaterialPageRoute(builder: (BuildContext context) => )
      },
    );
  }
}
