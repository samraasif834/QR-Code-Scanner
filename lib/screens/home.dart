// import 'dart:io';

// import 'package:barcode_widget/barcode_widget.dart';
// import 'package:flutter/material.dart';

// class Home1 extends StatefulWidget {
//   const Home1({ Key? key }) : super(key: key);

//   @override
//   State<Home1> createState() => _Home1State();
// }

// class _Home1State extends State<Home1> {
//   @override
//   TextEditingController title = TextEditingController();
//   TextEditingController content = TextEditingController();
//   var code = '';
//   File? file;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
            
//               Padding(
//                 padding: EdgeInsets.all(35),
//                 child: Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   child: TextFormField(
//                     controller: title,
//                     textAlign: TextAlign.center,
//                     decoration: InputDecoration(
//                       hintText: ' Code ',
//                     ),
//                   ),
//                 ),
//               ),
//               MaterialButton(
//                 color: Colors.indigo,
//                 onPressed: () {
//                   setState(() {
//                     code = title.text;
//                   });
//                 },
//                 child: Text(
//                   "Create",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//               code == ''
//                   ? Text('')
//                   : BarcodeWidget(
//                       barcode: Barcode.qrCode(
//                         errorCorrectLevel: BarcodeQRCorrectionLevel.high,
//                       ),
//                       data: '$code',
//                       width: 200,
//                       height: 200,
//                     ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }