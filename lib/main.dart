import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:klinik_shoes_project/Routes/routes.dart';
import 'package:klinik_shoes_project/module/history_page/view/history_page_view.dart';
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
      // home: HistoryPage(),
      initialRoute: AppRoutes.getHomeRoute(),
      getPages: AppRoutes.routes,
    );
  }
}
