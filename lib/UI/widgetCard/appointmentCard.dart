
import 'package:cageur_dashboard/UI/style/color.dart';
import 'package:cageur_dashboard/UI/widgetCard/dokterCard.dart';
import 'package:flutter/material.dart';

class appointmentCard extends StatelessWidget {
  
  final String Nama;
  final String NIK;
  const appointmentCard(
      {Key? key, required this.Nama, required this.NIK})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void sweatAlert(BuildContext) {
      AlertDialog alert = AlertDialog(
        title: Text("Detail Patien"),
        content: Container(
          child: dokterCard(),
        ),
        actions: [
          TextButton(
            child: Text('Ok'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      );
      showDialog(context: context, builder: (context) => alert);
      return;
    }

    return GestureDetector(
      onTap: (() => sweatAlert(context)),
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: Offset(0, 1))
            ]),
        child: Row(
          children: [
            Container(
              width: 50,
              child: Icon(Icons.people),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Nama,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    NIK,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
