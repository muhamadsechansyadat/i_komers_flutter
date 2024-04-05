import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownOption {
  final String id;
  final String name;

  DropdownOption({
    required this.id,
    required this.name,
  });
}

class CustomCupertinoDropdown extends StatefulWidget {
  final List<DropdownOption> items;
  final DropdownOption? selectedOption;
  final ValueChanged<DropdownOption?> onSelected;

  CustomCupertinoDropdown({
    required this.items,
    required this.selectedOption,
    required this.onSelected,
  });

  @override
  _CustomCupertinoDropdownState createState() =>
      _CustomCupertinoDropdownState();
}

class _CustomCupertinoDropdownState extends State<CustomCupertinoDropdown> {
  late int initialSelectedItem;

  @override
  void initState() {
    super.initState();
    initialSelectedItem =
        widget.items.indexWhere((option) => option == widget.selectedOption);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup(
          context: context,
          builder: (BuildContext context) {
            return _buildCupertinoPicker();
          },
        );
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.selectedOption?.name ?? 'Select Item'),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }

  Widget _buildCupertinoPicker() {
    return Container(
      height: 200.0,
      child: CupertinoPicker(
        itemExtent: 40.0,
        scrollController:
            FixedExtentScrollController(initialItem: initialSelectedItem),
        onSelectedItemChanged: (index) {
          final selectedOption = widget.items[index];
          widget.onSelected(selectedOption);
        },
        children: widget.items.map((option) {
          return Center(
            child: Text(option.name),
          );
        }).toList(),
      ),
    );
  }
}
