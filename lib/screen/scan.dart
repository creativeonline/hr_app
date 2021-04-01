import 'dart:core';
import 'dart:io';
import 'dart:math';

import 'package:date_time_format/date_time_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hr_app/main.dart';
import 'package:hr_app/service/shared_prefs.dart';
import 'package:intl/intl.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

import 'hr_scan_qrcode_screen.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode result;
  QRViewController controller;


  // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
   var currenttime = DateFormat("dd-MM-yyyy HH:mm").format(DateTime.now());

  // saveValue() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     prefs.setString('currenttime', currenttime);
  //   });

  // }
  // getValue() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   var currenttime = prefs.getString('currenttime');
  //
  //   return currenttime;
  // }

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      SharedPrefs().saveValue('currenttime',currenttime.toString());
      SharedPrefs().getValue('currenttime');
    });
    super.initState();
  }


  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    }
    controller.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    if (result != null) {
      Future.delayed(Duration.zero, () async {
        Navigator.of(context).pop(result.code);
      });
    }



    return Scaffold(
      body: Center(
        child: _buildQrView(context),
      ),
    );
    // return Scaffold(
    //   body: Column(
    //     children: <Widget>[
    //       Expanded(flex: 4, child: _buildQrView(context)),
    //
    //       FittedBox(
    //         fit: BoxFit.contain,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: <Widget>[
    //
    //             if (result != null)
    //               Text(
    //                   'Barcode Type: ${describeEnum(result.format)}   Data: ${result.code}')
    //             else
    //               Text('Scan a code'),
    //
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        controller.pauseCamera();
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    print('วัน เวลา => ${currenttime}');
    print('ssssss dispose => ${result.code}');

    super.dispose();
  }
}
