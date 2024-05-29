import 'package:flutter/material.dart';

class QrCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QRScannerWireframe(),
    );
  }
}

class QRScannerWireframe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  'QR Scanner Area',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Take Photo'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
