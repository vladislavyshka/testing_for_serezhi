import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  _DropDownState() {
    selectedVal = selectionLesson[0];
  }

  final selectionLesson = [
    'Математика',
    'Физика',
    'Русский язык',
    'Литература',
    'Физра',
    'География',
    'ОБЖ',
  ];
  String? selectedVal = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: const Color(0xFFFCFCFC),
          border: Border.all(
            color: const Color(0xFFF4F4F4),
          ),
          borderRadius: BorderRadius.circular(8)),
      child: DropdownButton(
        underline: const SizedBox(),
        isExpanded: true,
        value: selectedVal,
        items: selectionLesson
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ),
            )
            .toList(),
        onChanged: (val) {
          setState(() {
            selectedVal = val as String;
          });
        },
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Color(0xFFD9D9D9),
        ),
        dropdownColor: const Color(0xFFFCFCFC),
        elevation: 0,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
