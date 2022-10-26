import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          child: Center(
            child: Stack(
              children: [
                Center(child: Container(height: 400,width: 400,color: Colors.yellow,)),
                 Center(child: Container(height: 300,width: 300,color: Colors.blue,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
