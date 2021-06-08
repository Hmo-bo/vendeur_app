import 'package:flutter/material.dart';
import 'package:vendeur_app/Buyer_interface.dart';
import 'package:vendeur_app/LoginPage.dart';
import 'package:vendeur_app/addingProduct.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      home: LoginPage(),
    );
  }
  
  
}
