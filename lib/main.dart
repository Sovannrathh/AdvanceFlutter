import 'package:flutter/material.dart';

import 'screens/test_screen.dart'; // Import the test screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'BlaButton Test',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TestScreen(), // Set TestScreen as the home screen
    );
  }
}