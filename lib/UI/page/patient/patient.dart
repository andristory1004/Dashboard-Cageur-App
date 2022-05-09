
import 'package:cageur_dashboard/UI/style/color.dart';
import 'package:cageur_dashboard/UI/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';

class patient extends StatelessWidget {
   patient({ Key? key }) : super(key: key);

  final List<Map<String, dynamic>> listPatient = [
    {
      'name'      : 'Rehan',
      'dokterName': 'Dr Andri Ardiansyah'
    },
    {
      'name'      : 'Rehan',
      'dokterName': 'Dr Andri Ardiansyah'
    },
  ];

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
          toptitle(
            imageUrl: 'images/ic_patient.png', 
            title: 'Patient'),
          SizedBox(height: 15,),
          search(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: listPatient.map((data) {
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
                            Text("${data['dokterName']}", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),)
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