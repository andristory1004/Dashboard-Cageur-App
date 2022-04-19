
import 'package:cageur_dashboard/style/color.dart';
import 'package:flutter/material.dart';

class homeOption extends StatelessWidget {

  final String imageUrl;
  final String title;
  final String link;
  const homeOption({ Key? key, required this.imageUrl, required this.title, required this.link }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, link);
      },
      child: Container(
      width: 90,
      height: 100,
      padding: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 0,
            blurRadius: 3,
            offset: Offset(0,1)
          )
        ]
      ),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(imageUrl), width: 63, height: 67,),
          Text(title, style: TextStyle(fontSize: 10),)
        ],
      ),
    )
    );
  }
}