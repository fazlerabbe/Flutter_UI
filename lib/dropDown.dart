import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  List<String> samister = ['1st', 'second', 'third', '4th', 'five'];
  var dropdownvalue="second";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("DropDown")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                items: samister
                    .map((e) => DropdownMenuItem(
                          child: Text(e.toString()),
                          value: e,
                        ))
                    .toList(),
                onChanged: (String? valu) {
                  setState(() {
                    dropdownvalue = valu!;
                  });
                },
                hint: Text("select samister"),
                value: dropdownvalue,
                isExpanded: true,
              ),
            ],
          ),
        ));
  }
}
