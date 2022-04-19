
import 'package:cageur_dashboard/widgetCard/homeOption.dart';
import 'package:flutter/material.dart';

class dashboardMenu extends StatelessWidget {
  const dashboardMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget section1() {
      return Stack(
        children: <Widget>[
          Image(image: AssetImage('asset/images/Ellipse.png')),
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(children: <Widget>[
                  Image(
                    image: AssetImage('asset/images/Logo Santi.png'),
                    width: 75,
                    height: 75,
                  ),
                  Text("Admin Dashboard",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700))
                ])),
          )
        ],
      );
    }


    Widget myBox(){
      return Container(
        width: 90,
        height: 100,
      );
    }
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          section1(),
         Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            homeOption(
                              imageUrl: "asset/images/dashboard/ic_tiket.png",
                              title: "Appoitment",
                              link: 'appoitment',
                            ),
                            homeOption(
                              imageUrl: "asset/images/dashboard/ic_banner.png",
                              title: "Banner",
                              link: 'banner',
                            ),
                            homeOption(
                              imageUrl: "asset/images/dashboard/ic_chat.png",
                              title: "Departement",
                              link: 'departement',
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            homeOption(
                              imageUrl: "asset/images/dashboard/ic_dokter.png",
                              title: "Doctor",
                              link: 'dokter',
                            ),
                            homeOption(
                              imageUrl: "asset/images/dashboard/ic_galeri.png",
                              title: "Galeri",
                              link: 'galeri',
                            ),
                            homeOption(
                              imageUrl: "asset/images/dashboard/ic_jadwal.png",
                              title: "Jadwal",
                              link: 'jadwal',
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            homeOption(
                              imageUrl: "asset/images/dashboard/ic_klinik.png",
                              title: "Klinik",
                              link: 'klinik',
                            ),
                            homeOption(
                              imageUrl: "asset/images/dashboard/ic_notif.png",
                              title: "Notification",
                              link: 'notif',
                            ),
                            homeOption(
                              imageUrl: "asset/images/dashboard/ic_patient.png",
                              title: "Patient",
                              link: 'patient',
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            homeOption(
                              imageUrl: "asset/images/dashboard/ic_users.png",
                              title: "Users",
                              link: 'users',
                            ),
                            homeOption(
                              imageUrl: "asset/images/dashboard/ic_setting.png",
                              title: "Setting",
                              link: 'setting',
                            ),
                            myBox()

                          ],
                        ),
                      ],
                    )),
                
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
