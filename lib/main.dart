import 'package:flutter/material.dart';
import 'package:productapp/ProductScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Product App',
        home: new ProductScreen());
  }
}
