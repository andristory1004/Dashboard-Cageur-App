import 'package:cageur_dashboard/UI/page/appointment/appointment.dart';
import 'package:cageur_dashboard/UI/page/banner/banner.dart';
import 'package:cageur_dashboard/UI/page/dashboardMenu.dart';
import 'package:cageur_dashboard/UI/page/departement/departement.dart';
import 'package:cageur_dashboard/UI/page/dokter/addDokter.dart';
import 'package:cageur_dashboard/UI/page/dokter/dokter.dart';
import 'package:cageur_dashboard/UI/page/galeri/galeri.dart';
import 'package:cageur_dashboard/UI/page/jadwal/jadwal.dart';
import 'package:cageur_dashboard/UI/page/klinik/klinik.dart';
import 'package:cageur_dashboard/UI/page/notification/notification.dart';
import 'package:cageur_dashboard/UI/page/patient/patient.dart';
import 'package:cageur_dashboard/UI/page/setting.dart';
import 'package:cageur_dashboard/UI/page/users/users.dart';
import 'package:cageur_dashboard/UI/users/SignIn.dart';
import 'package:get/get.dart';
import 'package:avatars/avatars.dart';
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
            name: '/SignIn', 
            page: () => SignIn(), 
            transition: Transition.zoom,
            transitionDuration:Duration(seconds: 1),
        ),
        GetPage(
            name: '/dashboarMenu', 
            page: () => dashboardMenu(), 
            transition: Transition.zoom,
            transitionDuration:Duration(seconds: 1),
        ),
        GetPage(
            name: '/appointment', 
            page: () => appointment(), 
            transition: Transition.native,
            transitionDuration:Duration(seconds: 1),
        ),
        GetPage(
            name: '/banner', 
            page: () => banner(), 
            transition: Transition.zoom,
            transitionDuration:Duration(seconds: 1),
        ),
        GetPage(
            name: '/dapartment', 
            page: () => departement(), 
            transition: Transition.zoom,
            transitionDuration:Duration(seconds: 1),
        ),
        GetPage(
            name: '/dokter', 
            page: () => dokter(), 
            transition: Transition.zoom,
            transitionDuration:Duration(seconds: 1),
        ),
            GetPage(
              name: '/addDokter', 
              page: () => addDokter()
            ),
        GetPage(
            name: '/galery', 
            page: () => galeri(onTap: () {
              
            },), 
            transition: Transition.zoom,
            transitionDuration:Duration(seconds: 1),
        ),
        GetPage(
            name: '/jadwal', 
            page: () => jadwal(), 
            transition: Transition.zoom,
            transitionDuration:Duration(seconds: 1),
        ),
        GetPage(
            name: '/klinik', 
            page: () => klinik(), 
            transition: Transition.zoom,
            transitionDuration:Duration(seconds: 1),
        ),
        GetPage(
            name: '/notif', 
            page: () => notif(), 
            transition: Transition.zoom,
            transitionDuration:Duration(seconds: 1),
        ),
        GetPage(
            name: '/patient', 
            page: () => patient(), 
            transition: Transition.zoom,
            transitionDuration:Duration(seconds: 1),
        ),
        GetPage(
            name: '/users', 
            page: () => users(), 
            transition: Transition.zoom
        ),
        GetPage(
            name: '/setting', 
            page: () => setting(), 
            transition: Transition.zoom
        ),
        
      ],
    );
  }
}
