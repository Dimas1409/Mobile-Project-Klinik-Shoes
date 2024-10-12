import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klinik_shoes_project/Routes/routes.dart';
import 'package:klinik_shoes_project/module/categories_page/view/simple_cleaning_view.dart';
 // Import homepage view jika ada

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Klinik Shoes Project',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      // home: SimpleCleaningView(),
      initialRoute: AppRoutes.getHomeRoute(),
      getPages: AppRoutes.routes,
    );
  }
}
