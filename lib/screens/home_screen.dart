import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Today's Toons"),
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
      ),
    );
  }
}
