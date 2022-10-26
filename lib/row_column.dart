import 'package:flutter/material.dart';

class Row_Col extends StatelessWidget {
  const Row_Col({Key? key}) : super(key: key);
  final index = 0;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("Row Column"),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(100)

            ),
            child: Center(child: Text("Fazle",style:TextStyle(color: Colors.white,fontSize: 50),)),
          ),
        )
        );
  }
}
