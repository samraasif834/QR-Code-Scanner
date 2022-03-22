import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  final qrkey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? result;

  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 179, 255, 1.0),
        title: Text(
          'QR Scanner',
          style: TextStyle(color: Color.fromRGBO(253, 209, 3, 1.0)),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          buildQrView(context),
          Positioned(bottom: 70, child: buildResult()),
          Positioned(top: 10, child: buildControlButtons()),
        ],
      ),
    );
  }

  Widget buildControlButtons() => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: (() async {
              await controller?.toggleFlash();
              setState(() {});
            }),
            icon: Icon(Icons.flash_off),
          ),
          IconButton(
            onPressed: (() async {
              await controller?.flipCamera();
              setState(() {
                
              });
            }),
            icon: Icon(Icons.switch_camera),
          ),
        ],
      );
  Widget buildResult() => Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Text(
          (result != null) ? 'Result: ${result!.code}' : 'Scan a code',
          maxLines: 3,
        ),
      );

  Widget buildQrView(BuildContext context) => QRView(
        key: qrkey,
        onQRViewCreated: _onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: Theme.of(context).backgroundColor,
          borderRadius: 10,
          borderLength: 20,
          cutOutSize: MediaQuery.of(context).size.width * 0.8,
        ),
      );

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
