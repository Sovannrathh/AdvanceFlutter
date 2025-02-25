import 'package:flutter/material.dart';

class BlaButton extends StatelessWidget {
  final String labelText;
  final VoidCallback? onPressedAction;
  final Color textColor;
  final Color backgroundColor;
  final IconData? iconData;
  final double iconSize;
  final bool isDisabled;

  const BlaButton({
    Key? key,
    required this.labelText,
    required this.onPressedAction,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.blue,
    this.iconData,
    this.iconSize = 24.0,
    this.isDisabled = false, required String label, required bool isPrimary, required bool hasIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressedAction,
      style: ElevatedButton.styleFrom(
        backgroundColor: isDisabled ? Colors.grey : backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconData != null) ...[
            Icon(iconData, size: iconSize, color: textColor),
            SizedBox(width: 8),
          ],
          Text(
            labelText,
            style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
