import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 235, 237, 240);

class categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          // Container(
          //   height: 50,
          //   color: Colors.amber[600],
          //   child: const Center(child: Text('Entry A')),
          // ),
          // Container(
          //   height: 50,
          //   color: Colors.amber[500],
          //   child: const Center(child: Text('Entry B')),
          // ),
          // Container(
          //   height: 50,
          //   color: Colors.amber[100],
          //   child: const Center(child: Text('Entry C')),
          // ),
        ],
      )
    ]);
  }
}
