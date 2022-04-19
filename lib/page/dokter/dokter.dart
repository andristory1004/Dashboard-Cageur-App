import 'dart:developer';

import 'package:cageur_dashboard/style/color.dart';
import 'package:cageur_dashboard/widgetCard/buttonAdd.dart';
import 'package:cageur_dashboard/widgetCard/dokterCard.dart';
import 'package:cageur_dashboard/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';

class dokter extends StatefulWidget {
  const dokter({ Key? key }) : super(key: key);

  @override
  State<dokter> createState() => _dokterState();
}

class _dokterState extends State<dokter> {
  @override
  Widget build(BuildContext context) {
    List<Widget> listDokter =[];
    int counter = 1;
    // for(int i=0; i<15; i++){
    //   listDokter.add(i);
    // }

   
   
    

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
          decoration:
              InputDecoration(border: InputBorder.none, hintText: "Search"),
        ),
      );
    }

    
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          toptitle(
              imageUrl: "asset/images/dashboard/ic_dokter.png",
              title: "Dokter"),
          SizedBox(height: 15,),
          search(),
          Expanded(
            child: ListView(
              children: [
                dokterCard(),
                dokterCard(),
                dokterCard(),
                dokterCard(),
                dokterCard(),
                dokterCard(),
                dokterCard(),
                dokterCard(),
                
            ]
            ),
          ),
          buttonAdd(nameAdd: "Tambah dokter", linkUrl: 'addDokter')
        ],
      ),
    ));
  }
}