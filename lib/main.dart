import 'package:klinik_shoes_project/core.dart';
import 'package:flutter/material.dart';
import 'package:klinik_shoes_project/module/login_page/controller/login_page_controller.dart';
import 'package:klinik_shoes_project/module/login_page/view/login_page_view.dart';
import 'package:klinik_shoes_project/module/homepage/controller/homepage_controller.dart';
import 'package:klinik_shoes_project/module/homepage/view/homepage_view.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klinik Shoes',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePageView(),
    );
  }
}
