import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buatKotak(Color warna, double ukuran) {
      return Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: warna,
            ),
            height: ukuran,
            width: ukuran,
            margin: EdgeInsets.all(10),
          ),
          Text(
            'Revaldo Novandhika STI202102353',
            style: TextStyle(fontSize: 14),
          ),
        ],
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Wrap(
            children: [
              buatKotak(Colors.greenAccent, 100),
              buatKotak(Colors.orangeAccent[400]!, 70),
              buatKotak(Colors.greenAccent, 50),
              buatKotak(Colors.orangeAccent[400]!, 90),
              buatKotak(Colors.red[300]!, 110),
              buatKotak(Colors.blue[300]!, 30),
            ],
          ),
        ),
      ),
    );
  }
}
