
import 'package:cageur_dashboard/UI/style/color.dart';
import 'package:flutter/material.dart';

class klinikCard extends StatelessWidget {
  final String imageUrl;
  final String namaKlinik;
  final String alamat;
  const klinikCard({ Key? key, required this.imageUrl, required this.namaKlinik, required this.alamat, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
        onTap: (){},
        child: Container(
          margin: EdgeInsets.only(right: 15, left: 15),
          padding: EdgeInsets.all(5),
          height: 150,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius:0 ,
                blurRadius: 3,
                offset: Offset(0, 1)
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 125,
                height: 95,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                  )
                ),
              ),
              Container(
                width: 125,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Text(namaKlinik, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                    Text(alamat, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300), textAlign: TextAlign.center,),
                  ]
                ),
              ),
               
               Container(
                 width: 15,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Icon(Icons.people),
                     Icon(Icons.delete_outline)
                   ],
                 )
               )
            ],
          )
        ),
      );
  }
}