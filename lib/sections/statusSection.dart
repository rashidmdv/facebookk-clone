import 'package:flutter/material.dart';
import 'package:my_app/constants/contants.dart';
import 'package:my_app/widgets/avatar.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: "assets/img/person_2.jpg",
        displayStatus: false,
      ),
      title: Text("What is your mind..?"),
    );
  }
}
