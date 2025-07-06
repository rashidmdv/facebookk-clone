import 'package:flutter/material.dart';

Widget headerButton({
  required String btnText,
  required IconData icon,
  required void Function() btnAction,
  required Color color,
}) {
  return TextButton.icon(
    onPressed: btnAction,
    icon: Icon(icon, color: color),
    label: Text(btnText),
  );
}
