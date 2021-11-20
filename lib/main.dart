import 'package:flutter/material.dart';
import 'package:plant_app/home_screen.dart';
import 'package:plant_app/vase.dart';

void main() {
  runApp(PlantApp());
}
class PlantApp extends StatelessWidget {
  const PlantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:HomeScreen(),);
  }
}
