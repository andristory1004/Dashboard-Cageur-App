
import 'package:cageur_dashboard/UI/style/color.dart';
import 'package:flutter/material.dart';

class notifCard extends StatelessWidget {
  final String title;
  final String deskripsi;
  final String time;
  const notifCard({ Key? key, required this.title, required this.deskripsi, required this.time }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, left:15, top: 7.5, bottom: 7.5 ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
          color: Colors.grey.shade200,
          spreadRadius: 0,
          blurRadius: 3,
          offset: Offset(0, 1)
        )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700)),
          SizedBox(height: 10,),
          Text(deskripsi,style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
          SizedBox(height: 10,),
          Text(time,style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),
        ],
      ),
    );
  }
}