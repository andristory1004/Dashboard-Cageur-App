

import 'package:cageur_dashboard/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';

class banner extends StatelessWidget {
  const banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget section1() {
      return Container(
        margin: EdgeInsets.only(left: 20),
        child: Stack(
          children: [
            Image(
              image: AssetImage('asset/images/wirda1.png'),
              width: 320,
            ),
            Container(
              padding: EdgeInsets.only(left: 290, top: 10),
              child: Row(
                children: [
                  InkWell(
                    child: Image(
                      image: AssetImage('asset/images/del.png'),
                      width: 19,
                      height: 19,
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget Section2() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 150,
                height: 120,
                decoration: BoxDecoration(color: Color(0xffFCEFEF)),
                child: Column(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.only(
                        left: 120,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff1FCC79),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.camera_alt,
                              size: 15,
                              color: Colors.white,
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Icon(Icons.photo))
                  ],
                )),
            Container(
                width: 150,
                height: 120,
                decoration: BoxDecoration(color: Color(0xffFCEFEF)),
                child: Column(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.only(
                        left: 120,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff1FCC79),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Icon(
                              Icons.camera_alt,
                              size: 15,
                              color: Colors.white,
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Icon(Icons.photo))
                  ],
                )),
          ],
        ),
      );
    }

    Widget addBanner() {
      return Container(
        margin: EdgeInsets.only(left: 20),
        child: Stack(
          children: [
            Image(
              image: AssetImage('asset/images/banner1.png'),
              width: 320,
              height: 180,
            ),
            Container(
              padding: EdgeInsets.only(left: 290, top: 25),
              child: Row(
                children: [
                  InkWell(
                    child: Image(
                      image: AssetImage('asset/images/del.png'),
                      width: 19,
                      height: 19,
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          toptitle(
              imageUrl: 'asset/images/dashboard/ic_banner.png',
              title: 'Banner'),
          Expanded(
              child: ListView(children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                section1(),
                Section2(),
                addBanner()
              ],
            ),
          ]))
        ],
      ),
    ));
  }
}
