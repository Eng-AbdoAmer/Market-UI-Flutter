import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market/presentation/resources/routes_manager/routes_manager.dart';

import 'app/network/get_all_categories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//var categories=RequestGetAllCategories.getCategoriesRequest();
    return  const GetMaterialApp(
     debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashRoute,
      onGenerateRoute: RouteGenerator.getRoute,

    );
  }
}
