import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile_product_scanner/logic/ProductLogic.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class BarcodeScanScreen extends StatefulWidget {
  static const String route = '/barcode';
  const BarcodeScanScreen({Key? key}) : super(key: key);

  @override
  _BarcodeScanScreenState createState() => _BarcodeScanScreenState();
}

class _BarcodeScanScreenState extends State<BarcodeScanScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  var result;
  late QRViewController controller;

  Future<void> showProduct() async {
    controller.pauseCamera();
    await ProductLogic().showProduct(context);
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      if (scanData.code.toString() == "9735940564824") {
        showProduct();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
    );
  }
}
