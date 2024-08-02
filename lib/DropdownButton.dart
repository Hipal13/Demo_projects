import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  String dropdownvalue = 'Profile';

  var items = [
    'Profile',
    'Settings',
    'Account',
    'Go Premium',
    'Logout',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  DropdownButton(
          focusColor: Colors.purple,
          value: dropdownvalue,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(
                items,
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold
                ),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
      ),
    );
  }
}
