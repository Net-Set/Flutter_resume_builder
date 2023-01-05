import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resumebuilder/Tab/categories.dart';
import 'package:resumebuilder/Tab/feature.dart';
import 'package:resumebuilder/Tab/list_categories.dart';
import 'package:resumebuilder/Tab/mydesign.dart';
import 'package:resumebuilder/setting/setting.dart';
import 'package:resumebuilder/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   SplashScreenState createState() => SplashScreenState();
// }

// class SplashScreenState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 2),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => TabBarDemo())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         // margin: EdgeInsets.all(8.0),
//         // child: Card(
//         //   shape: RoundedRectangleBorder(
//         //       borderRadius: BorderRadius.all(Radius.circular(8.0))),
//         //   child: InkWell(
//         //     onTap: () => print("ciao"),
//         //     child: Column(
//         //       children: <Widget>[
//         //         ClipRRect(
//         //           borderRadius: BorderRadius.only(
//         //             topLeft: Radius.circular(8.0),
//         //             topRight: Radius.circular(8.0),
//         //           ),
//         //           child: Image.asset('asset/splash_screen.jpg',
//         //               width: 300, height: 150, fit: BoxFit.fill),
//         //         ),
//         //         ListTile(
//         //           title: Text('Pub 1'),
//         //           subtitle: Text('Location 1'),
//         //         ),
//         //       ],
//         //     ),
//         //   ),
//         // )
//         );
//   }
// }

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
                      log("IconButton_Click_Event");
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
                //       child: Icon(Icons.settings),
                //     )),
              ],
            ),
            body: TabBarView(
              children: [
                feature(),
                categories(),
                mydesign(),
              ],
            )),
      ),
    );
  }
}
//change
// class Screen2 extends StatefulWidget {
//   @override
//   _Screen2State createState() => _Screen2State();
// }

// class _Screen2State extends State<Screen2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Text('Navigate to a new screen on Button click'),
//           backgroundColor: Colors.blueAccent),
//       body: Center(
//         child: FlatButton(
//           color: Colors.blueAccent,
//           textColor: Colors.white,
//           onPressed: () {
//             Navigator.of(context)
//                 .push(MaterialPageRoute(builder: (context) => categories()));
//           },
//           child: Text('GO TO HOME'),
//         ),
//       ),
//     );
//   }

