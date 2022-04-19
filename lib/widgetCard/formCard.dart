import 'package:flutter/material.dart';

class form extends StatelessWidget {
  final String text1;
  final String text2;
  const form({ Key? key, required this.text1, required this.text2,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 140,
              child: Text(text1, style: TextStyle(fontSize: 12),)
              ),
            Container(
              width: 10,
              child: Text(":", style: TextStyle(fontSize: 12),)
              ),
            Container(
              width: 160,
              child: Text(text2, style: TextStyle(fontSize: 12),)
            ),
          ],
        ),
    );
  }
}