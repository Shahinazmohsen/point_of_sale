import 'package:flutter/material.dart';
import 'package:point_of_sale/helpers/sql_helper.dart';
import 'package:point_of_sale/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  var db=SqlHelper();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

