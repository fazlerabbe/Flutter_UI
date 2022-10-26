import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("drop"),
        ),
        body: Center(
          child: Column(
            children: [
              DropdownButton(
                // Initial Value
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),

                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),

                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                 // print(newValue);
                  setState(() {
                    print(newValue);
                    dropdownvalue = newValue!;
                  });
                },
              )
            ],
          ),
        ));
  }
}
