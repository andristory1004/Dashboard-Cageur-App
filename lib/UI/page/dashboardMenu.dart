

import 'package:cageur_dashboard/UI/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dashboardMenu extends StatelessWidget {
    dashboardMenu({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> listMenu = [
    {
      'linkUrl'   : '/appointment',
      'imageUrl'  : 'images/ic_appointment.png',
      'name'      : 'Appointment',
    },
    {
      'linkUrl'   : '/banner',
      'imageUrl'  : 'images/ic_banner.png',
      'name'      : 'Banner',
    },
    {
      'linkUrl'   : '/department',
      'imageUrl'  : 'images/ic_chat.png',
      'name'      : 'Department',
    },
    {
      'linkUrl'   : '/dokter',
      'imageUrl'  : 'images/ic_dokter.png',
      'name'      : 'Dokter',
    },
    {
      'linkUrl'   : '/galery',
      'imageUrl'  : 'images/ic_galeri.png',
      'name'      : 'Galery',
    },
    {
      'linkUrl'   : '/jadwal',
      'imageUrl'  : 'images/ic_jadwal.png',
      'name'      : 'Jadwal',
    },
    {
      'linkUrl'   : '/klinik',
      'imageUrl'  : 'images/ic_klinik.png',
      'name'      : 'Klinik',
    },
    {
      'linkUrl'   : '/notif',
      'imageUrl'  : 'images/ic_notif.png',
      'name'      : 'Notifikasi',
    },
    {
      'linkUrl'   : '/patient',
      'imageUrl'  : 'images/ic_patient.png',
      'name'      : 'Patient',
    },
    {
      'linkUrl'   : '/users',
      'imageUrl'  : 'images/ic_users.png',
      'name'      : 'Users',
    },
    {
      'linkUrl'   : '/setting',
      'imageUrl'  : 'images/ic_setting.png',
      'name'      : 'Setting',
    },
  ];

  @override
  Widget build(BuildContext context) {

    Widget titleMenu(){
       return Stack(
        children: <Widget>[
          Image(image: AssetImage('images/Ellipse.png')),
          Center(
                child: Container(
                  margin: EdgeInsets.only(top: 45),
                    child: Column(children: <Widget>[
                      Image(
                        image: AssetImage('images/ic_appointment.png'),
                        width: 75,
                        height: 75,
                      ),
                      SizedBox(height: 10,),
                      Text("Dashboard Menu",
                          style:
                              TextStyle(fontSize: 22, fontWeight: FontWeight.w700))
                    ])),
              ),
          
        ],
      );
    }

    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          titleMenu(),
         Expanded(
            child: GridView(
              padding: EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,),
              children: listMenu.map((data) {
                return Card(
                  child: GestureDetector(
                    onTap: (){
                      Get.toNamed("${data['linkUrl']}");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage("${data['imageUrl']}"), width: 63, height: 67,),
                        Text("${data['name']}"),
                      ],
                    ),
                  ),
                );
              }).toList(),),
          ),
        ],
      ),
    ));
  }
}
