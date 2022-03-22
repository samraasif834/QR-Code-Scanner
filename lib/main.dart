
import 'package:flutter/material.dart';
import 'package:qrscanner/home3.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home3(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.indigo[900],
//           bottom: TabBar(
//             tabs: [
//               Tab(
//                 icon: Icon(
//                   Icons.qr_code,
//                   size: 40,
//                 ),
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.qr_code_scanner,
//                   size: 40,
//                 ),
//               ),
//             ],
//           ),
//           title: Text(
//             '  QR / Barcode Scanner',
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             Home1(),
//             Home2(),
//           ],
//         ),
//       ),
//     );
//   }
// }
