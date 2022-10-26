import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                var snackbar = SnackBar(
                  content: Text("this is a snackbar"),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text("Show SnackBar"))),
    );
  }
}
