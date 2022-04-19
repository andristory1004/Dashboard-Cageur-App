import 'package:cageur_dashboard/style/color.dart';
import 'package:cageur_dashboard/widgetCard/appointmentCard.dart';
import 'package:cageur_dashboard/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';

class appoitment extends StatelessWidget {
  const appoitment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController? _textEditingController = TextEditingController();
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
              imageUrl: "asset/images/dashboard/ic_tiket.png",
              title: "Appointment"),
          SizedBox(
            height: 10,
          ),
          search(),
          Expanded(
            child: ListView(
              children: <Widget>[
                appointmentCard(Nama: "M Thoriq S", NIK: "3205059905000006"),
                appointmentCard(Nama: "M Thoriq S", NIK: "3205059905000006"),
                appointmentCard(Nama: "M Thoriq S", NIK: "3205059905000006"),
                appointmentCard(Nama: "M Thoriq S", NIK: "3205059905000006"),
                appointmentCard(Nama: "M Thoriq S", NIK: "3205059905000006"),
                appointmentCard(Nama: "M Thoriq S", NIK: "3205059905000006"),
                appointmentCard(Nama: "M Thoriq S", NIK: "3205059905000006"),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
