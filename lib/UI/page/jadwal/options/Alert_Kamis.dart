import 'package:flutter/material.dart';

class Alert_Kamis extends StatefulWidget {
  final List<String> items4;
  const Alert_Kamis({Key? key, required this.items4}) : super(key: key);

  @override
  State<Alert_Kamis> createState() => _Alert_KamisState();
}

class _Alert_KamisState extends State<Alert_Kamis> {
  List<String> _selectedItems4 = [];

  void _itemChange4(
    String itemValue4,
    bool isSelected4,
  ) {
    setState(() {
      if (isSelected4) {
        _selectedItems4.add(itemValue4);
      } else {
        _selectedItems4.remove(itemValue4);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems4);
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
                    children: widget.items4
                        .map((item4) => CheckboxListTile(
                              value: _selectedItems4.contains(item4),
                              title: Text(item4),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (isChecked4) =>
                                  _itemChange4(item4, isChecked4!),
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
