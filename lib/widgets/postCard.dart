import 'package:flutter/material.dart';
import 'package:my_app/widgets/avatar.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String time;

  const PostCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Avatar(displayImage: avatar, displayStatus: false),
            title: Row(
              spacing: 5,
              children: [
                Text(name, style: TextStyle(color: Colors.black, fontSize: 14)),
                Icon(Icons.verified, size: 15, color: Colors.blue),
              ],
            ),
            subtitle: Row(
              spacing: 5,
              children: [
                Text(
                  time,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                Icon(Icons.public, size: 12, color: Colors.grey[600]),
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz, color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }
}
