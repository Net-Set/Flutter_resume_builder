import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:resumebuilder/Tab/categories.dart';
import 'package:resumebuilder/Tab/feature.dart';
import 'package:resumebuilder/Tab/list_categories.dart';
import 'package:resumebuilder/Tab/mydesign.dart';
import 'package:resumebuilder/Testing_layout.dart';
import 'package:resumebuilder/setting/setting.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: TabBarDemo(),
        ),
      ),
    );
  }
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(
                    text: 'FEATURED',
                    // icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: 'CATEGORIES',
                    // icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: 'MY DESIGNS',
                    // icon: Icon(Icons.home),
                  ),
                ],
              ),
              title: new Center(
                  child:
                      new Text('Resume builder', textAlign: TextAlign.center)),
              leading: GestureDetector(
                // onTap: () {},
                child: IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      log("IconButton_Click_Event(Splash_Screen)");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      ); // add custom icons also
                    }),
              ),
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.ads_click,
                        size: 26.0,
                      ),
                    )),
                // Padding(
                //     padding: EdgeInsets.only(right: 20.0),
                //     child: GestureDetector(
                //       onTap: () {},
                //     )),
                //       child: Icon(Icons.settings),
              ],
            ),
            body: TabBarView(
              children: [
                imagelayout(),
                listcategories(),
                mydesign(),
              ],
            )),
      ),
    );
  }
}
