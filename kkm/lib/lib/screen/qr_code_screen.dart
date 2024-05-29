import 'package:flutter/material.dart';

class QrCodeScreen extends StatefulWidget {
  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
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
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pushNamed('/loading');
                  });
                },
                child: Text('Take Photo'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
