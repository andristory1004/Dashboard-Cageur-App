
import 'package:cageur_dashboard/style/color.dart';
import 'package:cageur_dashboard/widgetCard/topTitle.dart';
import 'package:cageur_dashboard/widgetCard/usersCard.dart';
import 'package:flutter/material.dart';

class users extends StatelessWidget {
  const users({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          toptitle(imageUrl: "asset/images/dashboard/ic_users.png", title: "Pengguna"),
          SizedBox(height: 15,),
          search(),
          Expanded(
            child: ListView(
              children: <Widget>[
                usersCard()
              ],
            ),
          ),
        ],
      ),
    ));
  }
}