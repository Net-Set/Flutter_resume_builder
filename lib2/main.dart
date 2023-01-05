import 'package:flutter/material.dart';

import 'package:resumebuilder/second_view.dart';
import 'package:resumebuilder/tab.dart';
import 'package:resumebuilder/view1.dart';
import 'package:resumebuilder/view2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        '/': (context) => TabSampleView(
              key: null,
            ),
        // When we navigate to the "/second" route, build the SecondScreen Widget
        '/second': (context) => SecondView(),
        '/view1': (context) => View1(),
        '/view2': (context) => View2(),
      },
    );
  }
}
