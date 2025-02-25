import 'package:flutter/material.dart';
import '../model/button.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BlaButton Test Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Primary Button
            BlaButton(
              labelText: "Primary Button",
              onPressedAction: () => print("Primary Button Clicked"),
            ),
            SizedBox(height: 16),

            // Secondary Button
            BlaButton(
              labelText: "Secondary Button",
              onPressedAction: () => print("Secondary Button Clicked"),
              backgroundColor: Colors.grey,
              textColor: Colors.black,
            ),
            SizedBox(height: 16),

            // Button with Icon
            BlaButton(
              labelText: "Button with Icon",
              onPressedAction: () => print("Button with Icon Clicked"),
              iconData: Icons.check,
            ),
            SizedBox(height: 16),

            // Disabled Button
            BlaButton(
              labelText: "Disabled Button",
              onPressedAction: () => print("Disabled Button Clicked"),
              isDisabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
