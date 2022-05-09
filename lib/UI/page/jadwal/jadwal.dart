import 'dart:ui';

import 'package:cageur_dashboard/UI/page/jadwal/options/Alert_Rabuu.dart';
import 'package:cageur_dashboard/UI/page/jadwal/options/Alert_Selasa.dart';
import 'package:flutter/material.dart';

import 'options/Alert_Senin.dart';

class jadwal extends StatefulWidget {
  const jadwal({Key? key}) : super(key: key);

  @override
  State<jadwal> createState() => _jadwalState();
}

class _jadwalState extends State<jadwal> {
  bool isSwitched = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  bool isSwitched5 = false;
  bool isSwitched6 = false;
  bool isSwitched7 = false;
  List<String> _selectedItems = [];
  List<String> _selectedItems2 = [];
  List<String> _selectedItems3 = [];
  List<String> _selectedItems4 = [];
  List<String> _selectedItems5 = [];
  List<String> _selectedItems6 = [];
  List<String> _selectedItems7 = [];

  void _showMultiSelect() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> _items = [
      '08:00 - 12:00',
      '13:00  - 16:00',
      '15:00 - 20:00',
      '21:00  - 00:00',
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(
          items: _items,
          items2: [],
        );
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  void _showMultiSelect2() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> _items2 = [
      '08:00 - 12:00',
      '13:00  - 16:00',
      '15:00 - 20:00',
      '21:00  - 00:00',
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Alert_Selasa(
          items2: _items2,
        );
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems2 = results;
      });
    }
  }

  void _showMultiSelect3() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> _items3 = [
      '08:00 - 12:00',
      '13:00  - 16:00',
      '15:00 - 20:00',
      '21:00  - 00:00',
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Alert_Rabu(
          items3: _items3,
        );
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems3 = results;
      });
    }
  }

  void _showMultiSelect4() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> _items4 = [
      '08:00 - 12:00',
      '13:00  - 16:00',
      '15:00 - 20:00',
      '21:00  - 00:00',
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Alert_Rabu(
          items3: _items4,
        );
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems4 = results;
      });
    }
  }

  void _showMultiSelect5() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> _items5 = [
      '08:00 - 12:00',
      '13:00  - 16:00',
      '15:00 - 20:00',
      '21:00  - 00:00',
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Alert_Rabu(
          items3: _items5,
        );
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems5 = results;
      });
    }
  }

  void _showMultiSelect6() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> _items6 = [
      '08:00 - 12:00',
      '13:00  - 16:00',
      '15:00 - 20:00',
      '21:00  - 00:00',
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Alert_Rabu(
          items3: _items6,
        );
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems6 = results;
      });
    }
  }

  void _showMultiSelect7() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> _items7 = [
      '08:00 - 12:00',
      '13:00  - 16:00',
      '15:00 - 20:00',
      '21:00  - 00:00',
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Alert_Rabu(
          items3: _items7,
        );
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems7 = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Image(image: AssetImage('asset/images/Ellipse.png')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButton(
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Center(
                    child: Container(
                        child: Column(children: <Widget>[
                      Image(
                        image:
                            AssetImage("asset/images/dashboard/ic_jadwal.png"),
                        width: 75,
                        height: 75,
                      ),
                      Text("Jadwal",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700))
                    ])),
                  ),
                ],
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: TextButton(
                                onPressed: _showMultiSelect,
                                child: Text(
                                  'Senin',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  print(isSwitched);
                                });
                              },
                              //activeTrackColor: Colors.lightGreenAccent,
                              //activeColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      //                   <--- left side
                      color: Colors.black,
                      width: 1.0,
                    ),
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Divider(
                        height: 5,
                      ),
                      // display selected items
                      Wrap(
                        children: _selectedItems
                            .map((e) => Chip(
                                  label: Text(e),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: TextButton(
                                onPressed: _showMultiSelect2,
                                child: Text(
                                  'Selasa',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Switch(
                              value: isSwitched2,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched2 = value;
                                  print(isSwitched2);
                                });
                              },
                              //activeTrackColor: Colors.lightGreenAccent,
                              //activeColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      //                   <--- left side
                      color: Colors.black,
                      width: 1.0,
                    ),
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Divider(
                        height: 1,
                      ),
                      // display selected items
                      Wrap(
                        children: _selectedItems2
                            .map((e) => Chip(
                                  label: Text(e),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: TextButton(
                                onPressed: _showMultiSelect3,
                                child: Text(
                                  'Rabu',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Switch(
                              value: isSwitched3,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched3 = value;
                                  print(isSwitched3);
                                });
                              },
                              //activeTrackColor: Colors.lightGreenAccent,
                              //activeColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      //                   <--- left side
                      color: Colors.black,
                      width: 1.0,
                    ),
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Divider(
                        height: 1,
                      ),
                      // display selected items
                      Wrap(
                        children: _selectedItems3
                            .map((e) => Chip(
                                  label: Text(e),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: TextButton(
                                onPressed: _showMultiSelect4,
                                child: Text(
                                  'Kamis',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Switch(
                              value: isSwitched4,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched4 = value;
                                  print(isSwitched4);
                                });
                              },
                              //activeTrackColor: Colors.lightGreenAccent,
                              //activeColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      //                   <--- left side
                      color: Colors.black,
                      width: 1.0,
                    ),
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Divider(
                        height: 1,
                      ),
                      // display selected items
                      Wrap(
                        children: _selectedItems4
                            .map((e) => Chip(
                                  label: Text(e),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: TextButton(
                                onPressed: _showMultiSelect5,
                                child: Text(
                                  "Jum'at",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Switch(
                              value: isSwitched5,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched5 = value;
                                  print(isSwitched5);
                                });
                              },
                              //activeTrackColor: Colors.lightGreenAccent,
                              //activeColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      //                   <--- left side
                      color: Colors.black,
                      width: 1.0,
                    ),
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Divider(
                        height: 1,
                      ),
                      // display selected items
                      Wrap(
                        children: _selectedItems5
                            .map((e) => Chip(
                                  label: Text(e),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: TextButton(
                                onPressed: _showMultiSelect6,
                                child: Text(
                                  'Sabtu',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Switch(
                              value: isSwitched6,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched6 = value;
                                  print(isSwitched6);
                                });
                              },
                              //activeTrackColor: Colors.lightGreenAccent,
                              //activeColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      //                   <--- left side
                      color: Colors.black,
                      width: 1.0,
                    ),
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Divider(
                        height: 1,
                      ),
                      // display selected items
                      Wrap(
                        children: _selectedItems6
                            .map((e) => Chip(
                                  label: Text(e),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: TextButton(
                              onPressed: _showMultiSelect7,
                              child: Text(
                                'Minggu ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Switch(
                              value: isSwitched7,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched7 = value;
                                  print(isSwitched7);
                                });
                              },
                              //activeTrackColor: Colors.lightGreenAccent,
                              //activeColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      //                   <--- left side
                      color: Colors.black,
                      width: 1.0,
                    ),
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Divider(
                        height: 1,
                      ),
                      // display selected items
                      Wrap(
                        children: _selectedItems7
                            .map((e) => Chip(
                                  label: Text(e),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
