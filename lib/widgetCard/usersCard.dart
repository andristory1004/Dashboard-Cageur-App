import 'package:flutter/material.dart';

class usersCard extends StatelessWidget {
  const usersCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      padding: EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 80,
            height: 83,
            child: Image(image: AssetImage("asset/images/dokter.png")),
          ),
          SizedBox(width: 10,),
          Container(
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Dokter Luthfi", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,)),
                Text("Created at 2022-03-12 10:56:57", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),maxLines: 2,),
              ],
            ),
          ),
          SizedBox(width: 10,),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: (){}, 
                  child: Image(image: AssetImage("asset/images/Polygon.png"), width: 30, height: 20,)),
              ],
            ),
          )
        ],
      ),
    );
  }
}