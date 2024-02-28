import 'package:flutter/material.dart';
import 'orderMain.dart';

class viewOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Screen 1'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => orderMain()));
              },
              child: const Text('Go to Order'),
            ),
          ],
        ),
      ),
    );
  }
}
