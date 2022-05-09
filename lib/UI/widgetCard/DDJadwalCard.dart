import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class DDJadwalCard extends StatefulWidget {
  const DDJadwalCard({Key? key}) : super(key: key);

  @override
  State<DDJadwalCard> createState() => _DDJadwalCardState();
}

class _DDJadwalCardState extends State<DDJadwalCard> {
  String? selectedValue;
  List<String> items = [
    'Pagi',
    'Malam',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DropdownButton2(
          hint: Row(
            children: [Text("Senin")],
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Column(
                    children: <Widget>[
                      Text(
                        item,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                     Column(
                       children: [
                          Text(
                        "08.00",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "15.00",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                       ],
                     )
                    ],
                  )))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          buttonHeight: 50,
          buttonWidth: 300,
          itemHeight: 40,
        ),
      ),
    );
  }
}
