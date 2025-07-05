import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final Function() onIconPress;
  final Color iconColor;

  const CircularButton({
    super.key,
    required this.icon,
    required this.onIconPress,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onIconPress,
        icon: Icon(icon, color: iconColor, size: 20),
      ),
    );
  }
}
