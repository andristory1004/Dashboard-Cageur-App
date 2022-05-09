
import 'package:cageur_dashboard/UI/widgetCard/topTitle.dart';
import 'package:flutter/material.dart';

class galeri extends StatelessWidget {
  final VoidCallback onTap;
  const galeri({ Key? key, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  Widget Section1() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      height: 115,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Image(
                            image: AssetImage('asset/images/wirda2.png'),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 125, top: 5),
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
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 180,
                      width: 145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Image(
                            image: AssetImage(
                              'asset/images/santi1.png',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 125, top: 5),
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
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          height: 180,
                          width: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          child: Stack(
                            children: <Widget>[
                              Image(
                                image: AssetImage(
                                  'asset/images/santi1.png',
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 125, top: 5),
                                child: Row(
                                  children: [
                                    InkWell(
                                      child: Image(
                                        image:
                                            AssetImage('asset/images/del.png'),
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
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 115,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          child: Stack(
                            children: <Widget>[
                              Image(
                                image: AssetImage(
                                  'asset/images/wirda2.png',
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 125, top: 5),
                                child: Row(
                                  children: [
                                    InkWell(
                                      child: Image(
                                        image:
                                            AssetImage('asset/images/del.png'),
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
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      height: 115,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Image(
                            image: AssetImage(
                              'asset/images/wirda2.png',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 125, top: 5),
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
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 180,
                      width: 145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Image(
                            image: AssetImage(
                              'asset/images/santi2.png',
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 125, top: 5),
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
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          height: 180,
                          width: 145,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          child: Stack(
                            children: <Widget>[
                              Image(
                                image: AssetImage(
                                  'asset/images/santi2.png',
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 125, top: 5),
                                child: Row(
                                  children: [
                                    InkWell(
                                      child: Image(
                                        image:
                                            AssetImage('asset/images/del.png'),
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
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 110,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          child: Stack(
                            children: <Widget>[
                              Image(
                                image: AssetImage(
                                  'asset/images/wirda1.png',
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 125, top: 5),
                                child: Row(
                                  children: [
                                    InkWell(
                                      child: Image(
                                        image:
                                            AssetImage('asset/images/del.png'),
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
                        ),
                      ],
                    ),
                  ],
                ),
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
        children: <Widget>[
          toptitle(
              imageUrl: 'asset/images/dashboard/ic_galeri.png',
              title: 'Galery'),
          Expanded(
            child: ListView(
              children: <Widget>[Section1()],
            ),
          ),
        ],
      ),
    ));
  }
}