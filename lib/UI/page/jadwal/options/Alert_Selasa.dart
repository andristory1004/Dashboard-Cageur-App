import 'package:flutter/material.dart';

class Alert_Selasa extends StatefulWidget {
  final List<String> items2;
  const Alert_Selasa({Key? key, required this.items2}) : super(key: key);

  @override
  State<Alert_Selasa> createState() => _Alert_SelasaState();
}

class _Alert_SelasaState extends State<Alert_Selasa> {
  @override
  List<String> _selectedItems2 = [];

  void _itemChange2(
    String itemValue2,
    bool isSelected2,
  ) {
    setState(() {
      if (isSelected2) {
        _selectedItems2.add(itemValue2);
      } else {
        _selectedItems2.remove(itemValue2);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems2);
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
                    children: widget.items2
                        .map((item2) => CheckboxListTile(
                              value: _selectedItems2.contains(item2),
                              title: Text(item2),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (isChecked2) =>
                                  _itemChange2(item2, isChecked2!),
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
