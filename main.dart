import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/screens/fourth.dart';
import 'package:myapp/screens/home.dart';
import 'package:myapp/screens/second.dart';
import 'package:myapp/screens/third.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => Home(),
        ),
        GetPage(name: '/second', page: () => Second()),
        GetPage(
            name: '/third', page: () => Third(), transition: Transition.zoom),
        GetPage(name: "/fourth", page: () => Fourth()),
      ],
    );
  }
}
