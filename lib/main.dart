import 'package:club_fitness/src/pages/tab_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Club Fitness',
      home: TabPage(),
    );
  }
}