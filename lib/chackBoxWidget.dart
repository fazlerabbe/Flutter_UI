import 'package:flutter/material.dart';

class ChackBoxWidget extends StatefulWidget {
  const ChackBoxWidget({super.key});

  @override
  State<ChackBoxWidget> createState() => _ChackBoxWidgetState();
}

class _ChackBoxWidgetState extends State<ChackBoxWidget> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("chack box")),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: CheckboxListTile(
                title: Text("Dark box"),
                checkColor: Colors.greenAccent,
                activeColor: Colors.red,
                value: this.valuefirst,
                onChanged: ((bool? value) => setState(() {
                      this.valuefirst = value!;
                    })),
              )),
        ));
  }
}
