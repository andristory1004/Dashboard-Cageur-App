import 'package:flutter/material.dart';

class Alert_Jum extends StatefulWidget {
  final List<String> items5;
  const Alert_Jum({Key? key, required this.items5}) : super(key: key);

  @override
  State<Alert_Jum> createState() => _Alert_JumState();
}

class _Alert_JumState extends State<Alert_Jum> {
  List<String> _selectedItems5 = [];

  void _itemChange5(
    String itemValue5,
    bool isSelected5,
  ) {
    setState(() {
      if (isSelected5) {
        _selectedItems5.add(itemValue5);
      } else {
        _selectedItems5.remove(itemValue5);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems5);
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
                    children: widget.items5
                        .map((item5) => CheckboxListTile(
                              value: _selectedItems5.contains(item5),
                              title: Text(item5),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (isChecked5) =>
                                  _itemChange5(item5, isChecked5!),
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
