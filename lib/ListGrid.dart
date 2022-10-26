import 'package:flutter/material.dart';

class ListGrid extends StatelessWidget {
  List fruits = ['orange', 'banana', 'apple', 'Mango'];
  Map frauits_person = {
    'fruits': ['orange', 'banana', 'apple', 'Mango'],
    'name': ['A', 'B', 'C', 'D']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListGrid"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          // child: ListView.builder(
          //   itemCount: fruits.length,
          //   itemBuilder: (context, index) => Card(
          //     child: ListTile(
          //       onTap: (){
          //         print((frauits_person['fruits'][index]),);
          //       },
          //       leading:Icon(Icons.person),
          //       title: Text(frauits_person['fruits'][index]),
          //       subtitle: Text(frauits_person['name'][index]),
          //     ),
          //   ),
          // ),
          // child: GridView(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 3,
          //       crossAxisSpacing: 5,
          //       mainAxisSpacing: 5,
          //       childAspectRatio: 2 / 3),
          //   children: [
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //     Card(
          //       child: Center(child: Text('Orange')),
          //     ),
          //   ],
          // ),
          child: GridView.builder(
              itemCount: fruits.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Card(
                    child: Center(
                  child: Text(fruits[index]),
                ));
              }),
        ));
  }
}
