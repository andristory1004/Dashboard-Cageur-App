
import 'package:cageur_dashboard/style/color.dart';
import 'package:cageur_dashboard/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';

class patient extends StatelessWidget {
  const patient({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget section1() {
      return Stack(
        children: <Widget>[
          Image(image: AssetImage('asset/images/Ellipse.png')),
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(children: <Widget>[
                  Image(
                    image: AssetImage("asset/images/dashboard/ic_patient.png"),
                    width: 75,
                    height: 75,
                  ),
                  Text("Patient",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700))
                ])),
          )
        ],
      );
    }
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
            imageUrl: 'asset/images/dashboard/ic_patient.png', 
            title: 'Patient'),
          SizedBox(height: 15,),
          search(),
          Expanded(
            child: ListView(
              children: <Widget>[
                
                 
              ],
            ),
          ),
        ],
      ),
    ));
  }
}