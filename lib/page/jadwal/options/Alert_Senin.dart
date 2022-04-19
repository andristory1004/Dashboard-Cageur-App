import 'package:flutter/material.dart';

class MultiSelect extends StatefulWidget {
  final List<String> items, items2;
  const MultiSelect({
    Key? key,
    required this.items,
    required this.items2,
  }) : super(key: key);

  @override
  State<MultiSelect> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  List<String> _selectedItems = [];

  void _itemChange(
    String itemValue,
    bool isSelected,
  ) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue);
      } else {
        _selectedItems.remove(itemValue);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems);
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
                    children: widget.items
                        .map((item) => CheckboxListTile(
                              value: _selectedItems.contains(item),
                              title: Text(item),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (isChecked) =>
                                  _itemChange(item, isChecked!),
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
