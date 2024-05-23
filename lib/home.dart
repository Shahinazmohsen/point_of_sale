import 'dart:html';

import 'package:flutter/material.dart';
import 'package:point_of_sale/helpers/sql_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        var  SqlHelper= SqlHelper();

        
        
      }),
    );
  }
}