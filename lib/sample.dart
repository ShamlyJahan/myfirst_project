import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sample(),
  ));
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("MY APP"),
      ),
      body: Container(color: Colors.pinkAccent,
        child: Center(
          child: Text(
            "Welcome to Flutter",
            style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
