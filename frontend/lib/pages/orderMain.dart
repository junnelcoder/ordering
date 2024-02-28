// ignore_for_file: file_names

import 'package:flutter/material.dart';

class orderMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen 2')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Screen 1'),
            SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context) => orderMain()));
            //   },
            //   child: Text('Go to Order'),
            // ),
          ],
        ),
      ),
    );
  }
}
