import 'package:flutter/material.dart';
import 'package:udemyapp/src/pages/contador_pages.dart';
//import 'package:udemyapp/src/pages/home_pages.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: ContadorPage(),
        ));
  }
}
