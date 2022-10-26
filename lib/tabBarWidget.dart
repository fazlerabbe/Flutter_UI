import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom:
              TabBar(indicatorWeight: 10, indicatorColor: Colors.black, tabs: [
            Tab(
              icon: Icon(
                Icons.chat,
              ),
              text: 'CHATS',
            ),
            Tab(
              icon: Icon(
                Icons.chat_bubble,
              ),
              text: 'STATUS',
            ),
            Tab(
              icon: Icon(
                Icons.call,
              ),
              text: 'CALLS',
            ),
            Tab(
              icon: Icon(
                Icons.chat_bubble,
              ),
              text: 'STATUS',
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
              child: Center(
            child: Text('CHATS', style: TextStyle(fontSize: 30)),
          )),
          Container(
              child: Center(
            child: Text('STATUS', style: TextStyle(fontSize: 30)),
          )),
          Container(
              child: Center(
            child: Text('CALLS', style: TextStyle(fontSize: 30)),
          )),
          Container(
              child: Center(
            child: Text('Stop', style: TextStyle(fontSize: 30)),
          )),
        ]),
      ),
    );
  }
}
