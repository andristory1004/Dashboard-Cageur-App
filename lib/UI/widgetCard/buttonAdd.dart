
import 'package:cageur_dashboard/UI/style/color.dart';
import 'package:flutter/material.dart';

class buttonAdd extends StatelessWidget {
  final String linkUrl;
  final String nameAdd;
  const buttonAdd({ Key? key, required this.nameAdd, required this.linkUrl, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
          width: 327,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(32)),
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, linkUrl);
              },
              child: Text(nameAdd,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: white))
                      ));
  }
}