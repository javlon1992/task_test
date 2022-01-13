import 'package:flutter/material.dart';
import 'package:task_test/pages/animation_page.dart';
import 'package:task_test/pages/drower_page.dart';
import 'package:task_test/pages/home_page.dart';
import 'package:task_test/pages/vertical_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const VerticalPage(),
      routes: {
        HomePage.id: (context)=>HomePage(),
        AnimationPage.id: (context)=>AnimationPage(),
        DrawerPage.id: (context)=> DrawerPage(),
        VerticalPage.id: (contex)=>VerticalPage(),
      },
    );
  }
}


