
import 'package:cageur_dashboard/page/dashboardMenu.dart';
import 'package:cageur_dashboard/screen/splash.dart';
import 'package:cageur_dashboard/users/SignIn.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dashboard Cageur',
      debugShowCheckedModeBanner: false,
      home: dashboardMenu(),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/SignIn', page: () => SignIn(), transition: Transition.zoom),
        GetPage(
            name: '/SignIn', page: () => SignIn(), transition: Transition.zoom),
      ],
    );
  }
}
