import 'package:flutter/material.dart';
import 'package:my_app/widgets/avatar.dart';

class RoomSections extends StatelessWidget {
  const RoomSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          SizedBox(width: 10),
          Avatar(displayImage: "assets/img/person_2.jpg", displayStatus: true),
          SizedBox(width: 10),
          Avatar(displayImage: "assets/img/person_2.jpg", displayStatus: true),
          SizedBox(width: 10),
          Avatar(displayImage: "assets/img/person_2.jpg", displayStatus: true),
          SizedBox(width: 10),
          Avatar(displayImage: "assets/img/person_2.jpg", displayStatus: true),
          SizedBox(width: 10),
          Avatar(displayImage: "assets/img/person_2.jpg", displayStatus: true),
          SizedBox(width: 10),
          Avatar(displayImage: "assets/img/person_2.jpg", displayStatus: true),
          SizedBox(width: 10),
          Avatar(displayImage: "assets/img/person_2.jpg", displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return OutlinedButton.icon(
      style: ButtonStyle(),
      onPressed: () {
        print("room live clicked");
      },
      label: Text(
        "Create \nRoom",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      icon: Icon(Icons.video_call, color: Colors.purple, size: 25),
    );
  }
}
