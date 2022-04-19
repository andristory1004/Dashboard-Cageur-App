import 'package:flutter/material.dart';

class Alert_Rabu extends StatefulWidget {
  final List<String> items3;
  const Alert_Rabu({Key? key, required this.items3}) : super(key: key);

  @override
  State<Alert_Rabu> createState() => _Alert_RabuState();
}

class _Alert_RabuState extends State<Alert_Rabu> {
  @override
  List<String> _selectedItems3 = [];

  void _itemChange3(
    String itemValue3,
    bool isSelected3,
  ) {
    setState(() {
      if (isSelected3) {
        _selectedItems3.add(itemValue3);
      } else {
        _selectedItems3.remove(itemValue3);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems3);
  }

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
                    children: widget.items3
                        .map((item3) => CheckboxListTile(
                              value: _selectedItems3.contains(item3),
                              title: Text(item3),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (isChecked3) =>
                                  _itemChange3(item3, isChecked3!),
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
