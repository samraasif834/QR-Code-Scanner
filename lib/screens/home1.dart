// import 'package:flutter/material.dart';
// import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';

// class Home2 extends StatefulWidget {
//   const Home2({ Key? key }) : super(key: key);

//   @override
//   State<Home2> createState() => _Home2State();
// }

// class _Home2State extends State<Home2> {
//   @override
//    String? _qrInfo = 'Scan a QR/Bar code';
//   bool camState = false;

//   qrCallback(String? code) {
//     setState(() {
//       camState = false;
//       _qrInfo = code;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     setState(() {
//       camState = true;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           if (camState == true) {
//             setState(() {
//               camState = false;
//             });
//           } else {
//             setState(() {
//               camState = true;
//             });
//           }
//         },
//         child: Icon(Icons.camera),
//       ),
//       body: camState
//           ? Center(
//               child: SizedBox(
//                 height: 1000,
//                 width: 500,
//                 child: QRBarScannerCamera(
//                   onError: (context, error) => Text(
//                     error.toString(),
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: Colors.red),
//                   ),
//                   qrCodeCallback: (code) {
//                     qrCallback(code);
//                   },
//                 ),
//               ),
//             )
//           : Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Code :" + _qrInfo!,
//                     style: TextStyle(
//                       fontSize: 25,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//     );
//   }
// }
