import 'package:flutter/material.dart';

class PantallaMora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock, size: 80, color: Colors.red),
            SizedBox(height: 20),
            Text('Dispositivo bloqueado por mora',
                style: TextStyle(fontSize: 20, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
