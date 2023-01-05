// import 'package:animations/animations.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         brightness: Brightness.light,
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String searchString;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: OpenContainer<String>(
//             openBuilder: (_, closeContainer) => SearchPage(closeContainer),
//             onClosed: (res) => setState(() {
//               searchString = res;
//             }),
//             tappable: false,
//             closedBuilder: (_, openContainer) => SearchBar(
//               searchString: searchString,
//               openContainer: openContainer,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SearchBar extends StatelessWidget {
//   const SearchBar(
//       {Key, @required this.searchString, @required this.openContainer})
//       : super(key: key);

//   final String searchString;
//   final VoidCallback openContainer;
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       elevation: 3,
//       borderRadius: BorderRadius.circular(5),
//       child: InkWell(
//         onTap: openContainer,
//         child: Container(
//           padding: EdgeInsets.all(10),
//           color: Colors.white,
//           child: Row(
//             children: [
//               Icon(Icons.search),
//               SizedBox(width: 10),
//               searchString != null
//                   ? Expanded(child: Text(searchString))
//                   : Spacer(),
//               Icon(Icons.mic),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SearchPage extends StatelessWidget {
//   const SearchPage(
//     this.onClose, {
//     Key key,
//   }) : super(key: key);

//   final void Function({String returnValue}) onClose;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 2),
//                     spreadRadius: 0,
//                     blurRadius: 1,
//                     color: Colors.black26,
//                   )
//                 ],
//                 color: Colors.white,
//               ),
//               child: Row(
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.arrow_back),
//                     onPressed: onClose,
//                   ),
//                   Spacer(),
//                   Icon(Icons.mic),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   OutlineButton(
//                     onPressed: () => onClose(returnValue: 'Flutter'),
//                     child: Text('Search: "Flutter"'),
//                   ),
//                   OutlineButton(
//                     onPressed: () => onClose(returnValue: 'Rabbit'),
//                     child: Text('Search: "Rabbit"'),
//                   ),
//                   OutlineButton(
//                     onPressed: () => onClose(returnValue: 'What is the Matrix'),
//                     child: Text('Search: "What is the Matrix"'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(imagelayout());
}

class imagelayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.purple,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List a = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ52Thbpa8P0Iwb582O4r7vftj8SiyY_f78yot4iDXLFBte697XmbUqpgrQvQK7ofXpA8&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSagyJX0TCX0kbye4f3JmwPKgGyGWJMia39H3vRB7aOIDchzmscEej5r5vyTHHNYaLe4A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlaYflxk42Mr6kEchEmcRxbOSebkHj19QqtQ45KP4P54hgLc0vW2enmBIVO2-9zFLjHs&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Displaying Images"),
      // ),

      body: ListView.builder(
        itemBuilder: (BuildContext ctx, int index) {
          // return Padding(
          //   padding: EdgeInsets.all(20),
          //   child: Card(
          //     shape: Border.all(
          //       width: 1,
          //     ),
          //     elevation: 0,
          //     color: Colors.black,
          //     child: Column(
          //       children: <Widget>[
          //         Image.network(a[index]),
          //         SizedBox(
          //           width: 1,
          //           height: 5,
          //         ),
          //         // Icon(
          //         //   Icons.favorite,
          //         //   color: Colors.yellow,
          //         //   size: 40,
          //         // ),
          //       ],
          //     ),
          //   ),
          // );

          return Column(children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Center(
                // color: btnColor,

                child: Column(children: <Widget>[
                  Image.network(a[index]),
                  // loremIpsum,
                  // style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ]),
              ),
            )
          ]);
        },
        itemCount: a.length,
      ),
    );
  }
}
