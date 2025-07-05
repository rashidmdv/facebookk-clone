import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({super.key});

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



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            btnText: "Live",
            icon: Icons.video_call,
            btnAction: () {print("live clicked");},
            color: Colors.red,
          ),
          VerticalDivider(thickness: 1, color: Colors.grey[300]),
          headerButton(
            btnText: "Photos",
            icon: Icons.photo,
            btnAction: () {print("Photos clicked");},
            color: Colors.green,
          ),
          VerticalDivider(thickness: 1, color: Colors.grey[300]),
          headerButton(
            btnText: "Room",
            icon: Icons.room,
            btnAction: () {print("room clicked");},
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
