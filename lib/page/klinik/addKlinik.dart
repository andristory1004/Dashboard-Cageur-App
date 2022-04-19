
import 'package:cageur_dashboard/style/color.dart';
import 'package:cageur_dashboard/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class addKlinik extends StatelessWidget {
  const addKlinik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget section2() {
      return Container(
        margin: EdgeInsets.only(top: 20, right: 15, left: 15),
        padding: EdgeInsets.only(top: 25, bottom: 25, left: 15, right: 15),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "Nama Instansi",
                    prefixIcon: Icon(Icons.people_alt),
                    hintText: "Santi",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.number,
                inputFormatters: [LengthLimitingTextInputFormatter(13)],
                decoration: InputDecoration(
                    labelText: "No Telepon",
                    prefixIcon: Icon(Icons.phone),
                    hintText: "085111222333",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.mail),
                    hintText: "example@gmail.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: TextFormField(
                autofocus: true,
                keyboardType: TextInputType.name,
                maxLines: 5,
                decoration: InputDecoration(
                    labelText: "Alamat",
                    prefixIcon: Icon(Icons.home),
                    hintText: "Kab. Garut",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSimpan() {
      return Container(
        margin: EdgeInsets.only(left: 35, right: 35),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(32)),
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'addKlinik');
              },
              child: Text("Simpan",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: white))));
    }

    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            toptitle(
                imageUrl: "asset/images/dashboard/ic_klinik.png",
                title: "Add RS / Klinik"),
            section2(),
            SizedBox(
              height: 35,
            ),
            buttonSimpan()
          ],
        ),
      ),
    );
  }
}
