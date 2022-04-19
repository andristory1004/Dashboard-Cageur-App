import 'package:cageur_dashboard/widgetCard/formCard.dart';
import 'package:flutter/material.dart';

class appoitmentCardDetail extends StatelessWidget {
  final String id;
  final String nama;
  final String jk;
  final String usia;
  final String noHp;
  final String tglAppoitment;
  final String waktuAppoitment;
  final String statusAppoitment;
  final String tipeAppoitment;
  const appoitmentCardDetail({
    Key? key,
    required this.id,
    required this.nama,
    required this.jk,
    required this.usia,
    required this.noHp,
    required this.tglAppoitment,
    required this.waktuAppoitment,
    required this.statusAppoitment,
    required this.tipeAppoitment,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 7.5, bottom: 7.5),
      height: 200,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          form(text1: "NIK", text2: id),
          SizedBox(height: 5,),
          form(text1: "Nama", text2: nama),
          SizedBox(height: 5,),
          form(text1: "Jenis Kelamin", text2: jk),
          SizedBox(height: 5,),
          form(text1: "Usia", text2: usia),
          SizedBox(height: 5,),
          form(text1: "No HP", text2: noHp),
          SizedBox(height: 5,),
          form(text1: "Tanggal Appoitment", text2: tglAppoitment),
          SizedBox(height: 5,),
          form(text1: "Waktu Appoitment", text2: waktuAppoitment),
          SizedBox(height: 5,),
          form(text1: "Status Appoitment", text2: statusAppoitment),
          SizedBox(height: 5,),
          form(text1: "Tipe Appoitment", text2: tipeAppoitment),
        ],
      ),
    );
  }
}
