import 'package:cageur_dashboard/UI/style/color.dart';
import 'package:cageur_dashboard/UI/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';

class appointment extends StatelessWidget {
  appointment({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> listAppointment = [
    {
      'name'  : 'M Thorik S',
      'nik'   : 3205051005242424,
    },
    {
      'name'  : 'Andri Ardiansyah',
      'nik'   : 3205051005242425,
    }
  ];

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
              imageUrl: "images/ic_appointment.png",
              title: "Appointment"),
          SizedBox(
            height: 10,
          ),
          search(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: listAppointment.map((data){
                return Card(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.people),
                        SizedBox(width: 50,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${data['name']}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                            SizedBox(height: 10),
                            Text("${data['nik']}", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),)
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    ));
  }
}
