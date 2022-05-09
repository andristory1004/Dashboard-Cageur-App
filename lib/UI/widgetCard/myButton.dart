import 'package:flutter/material.dart';
import 'package:get/get.dart';

class myButton extends StatelessWidget {

  final Color buttonColor;
  final String linkUrl;
  final String name;
  final Color textColor;
  

  const myButton({ Key? key,
        required this.buttonColor,
        required this.linkUrl,
        required this.name,
        required this.textColor }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 50, right: 50),
          height: 50,
          decoration: BoxDecoration(
              color: buttonColor, 
              borderRadius: BorderRadius.circular(32)),
          child: TextButton(
              onPressed: () {
                Get.toNamed(linkUrl);
              },
              child: Text(name,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: textColor)
                      )
                  )
              );
  }
}