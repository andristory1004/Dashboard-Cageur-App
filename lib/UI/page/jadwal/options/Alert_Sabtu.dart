import 'package:flutter/material.dart';

class Alert_Sabtu extends StatefulWidget {
  final List<String> items6;
  const Alert_Sabtu({Key? key, required this.items6}) : super(key: key);

  @override
  State<Alert_Sabtu> createState() => Alert_SabtuState();
}

class Alert_SabtuState extends State<Alert_Sabtu> {
  List<String> _selectedItems6 = [];

  void _itemChange6(
    String itemValue6,
    bool isSelected6,
  ) {
    setState(() {
      if (isSelected6) {
        _selectedItems6.add(itemValue6);
      } else {
        _selectedItems6.remove(itemValue6);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems6);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              AlertDialog(
                title: const Text('Pilih Jadwal'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: widget.items6
                        .map((item6) => CheckboxListTile(
                              value: _selectedItems6.contains(item6),
                              title: Text(item6),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (isChecked6) =>
                                  _itemChange6(item6, isChecked6!),
                            ))
                        .toList(),
                  ),
                ),
                actions: [
                  TextButton(
                    child: const Text('Cancel'),
                    onPressed: _cancel,
                  ),
                  ElevatedButton(
                    child: const Text('Submit'),
                    onPressed: _submit,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
