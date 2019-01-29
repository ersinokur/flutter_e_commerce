import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/Screens/productList.dart';
import 'package:flutter_e_commerce/utilities/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-commerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductList(),
      routes: Routes.routes, //route'ları nereden alacagagiz.
    );
  }
}


