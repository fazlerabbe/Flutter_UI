import 'package:flutter/material.dart';

class Container_Size extends StatelessWidget {
  const Container_Size({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 50,
          color: Colors.red,
          child: Text("good"),
        ),
      ),
    );
  }
}
