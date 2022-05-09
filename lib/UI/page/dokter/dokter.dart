import 'dart:developer';

import 'package:avatars/avatars.dart';
import 'package:cageur_dashboard/UI/style/color.dart';
import 'package:cageur_dashboard/UI/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dokter extends StatefulWidget {
  dokter({Key? key}) : super(key: key);

  @override
  State<dokter> createState() => _dokterState();
}

class _dokterState extends State<dokter> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listDokter = [
      {
        'imageUrl': 'images/ic_dokter.png',
        'name': 'Mulyana',
        'spesialis': 'Jantung'
      },
      {
        'imageUrl': 'images/ic_dokter.png',
        'name': 'Mulyana',
        'spesialis': 'Jantung'
      },
      {
        'imageUrl': 'images/ic_dokter.png',
        'name': 'Mulyana',
        'spesialis': 'Jantung'
      },
      {
        'imageUrl': 'images/ic_dokter.png',
        'name': 'Mulyana',
        'spesialis': 'Jantung'
      },
      {
        'imageUrl': 'images/ic_dokter.png',
        'name': 'Mulyana',
        'spesialis': 'Jantung'
      },
    ];

    TextEditingController? _search = TextEditingController();

    Widget search() {
      return Container(
        width: 350,
        height: 50,
        padding: EdgeInsets.only(left: 15, right: 15),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: Offset(0, 1))
            ]),
        child: TextField(
          onChanged: (Value) {
            setState(() {
              listDokter = listDokter
                  .where((element) => element.containsKey('name'))
                  .toList();
            });
          },
          controller: _search,
          decoration:
              InputDecoration(border: InputBorder.none, hintText: "Search"),
        ),
      );
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            children: <Widget>[
              toptitle(imageUrl: "images/ic_dokter.png", title: "Dokter"),
              SizedBox(
                height: 15,
              ),
              search(),
              Expanded(
                child: Stack(
                  children: [
                    ListView(
                      padding: EdgeInsets.all(20),
                      children: listDokter.map((data) {
                        return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: CircleAvatar(
                                        child: Image(
                                            image: AssetImage(
                                                "${data['imageUrl']}")),
                                      ),
                                    ),
                                    SizedBox(width: 25,),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("${data['name']}",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500)),
                                          SizedBox(height: 10),
                                          Text(
                                            "${data['spesialis']}",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Icon(Icons.people)),
                                    TextButton(
                                        onPressed: () {},
                                        child: Icon(Icons.delete_outline)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FittedBox(
                          child: Container(
                        margin: EdgeInsets.only(bottom: 20, right: 20),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(50)),
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed('/addDokter');
                          },
                          child: Icon(Icons.add),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              // buttonAdd(nameAdd: "Tambah dokter", linkUrl: 'addDokter')
            ],
          ),
        ));
  }
}
