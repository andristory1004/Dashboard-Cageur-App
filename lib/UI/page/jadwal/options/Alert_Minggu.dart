import 'package:flutter/material.dart';

class Alert_Minggu extends StatefulWidget {
  final List<String> items7;
  const Alert_Minggu({Key? key, required this.items7}) : super(key: key);

  @override
  State<Alert_Minggu> createState() => Alert_MingguState();
}

class Alert_MingguState extends State<Alert_Minggu> {
  List<String> _selectedItems7 = [];

  void _itemChange7(
    String itemValue7,
    bool isSelected7,
  ) {
    setState(() {
      if (isSelected7) {
        _selectedItems7.add(itemValue7);
      } else {
        _selectedItems7.remove(itemValue7);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems7);
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
                    children: widget.items7
                        .map((item7) => CheckboxListTile(
                              value: _selectedItems7.contains(item7),
                              title: Text(item7),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (isChecked7) =>
                                  _itemChange7(item7, isChecked7!),
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
