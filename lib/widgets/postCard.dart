import 'package:flutter/material.dart';
import 'package:my_app/sections/headerButtonSection.dart';
import 'package:my_app/widgets/avatar.dart';
import 'package:my_app/widgets/headerButton.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String time;
  final String postTitle;
  final bool showVerifiedTick;

  const PostCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.time,
    required this.postTitle,
    this.showVerifiedTick = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(thickness: 1, color: Colors.grey[300]),
          HeaderButtonSection(
            buttonOne: headerButton(
              btnText: "Like",
              icon: Icons.thumb_up,
              btnAction: () {
                print("like clicked");
              },
              color: Colors.grey,
            ),
            buttonTwo: headerButton(
              btnText: "comments",
              icon: Icons.comment,
              btnAction: () {
                print("Photos clicked");
              },
              color: Colors.grey,
            ),
            buttonThree: headerButton(
              btnText: "Share",
              icon: Icons.share,
              btnAction: () {
                print("room clicked");
              },
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget titleSection() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 5, left: 20, right: 20),
      child: Text(
        postTitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  Widget imageSection() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(avatar, fit: BoxFit.cover),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        spacing: 5,
        children: [
          Text(name, style: TextStyle(color: Colors.black, fontSize: 14)),
          showVerifiedTick
              ? Icon(Icons.verified, size: 15, color: Colors.blue)
              : SizedBox(),
        ],
      ),
      subtitle: Row(
        spacing: 5,
        children: [
          Text(time, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
          Icon(Icons.public, size: 12, color: Colors.grey[600]),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_horiz, color: Colors.grey[600]),
      ),
    );
  }

  Widget footerSection() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.thumb_up, color: Colors.white, size: 10),
                ),
                SizedBox(width: 5),
                displayText("10k"),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText("1k"),
                SizedBox(width: 3),
                displayText("comments"),
                SizedBox(width: 10),
                displayText("1k"),
                SizedBox(width: 3),
                displayText("shares"),
                SizedBox(width: 10),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  avatarHeight: 30,
                  avatarWidth: 30,
                ),
                // SizedBox(width: 5),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText(text) {
    return Text(text, style: TextStyle(fontSize: 14, color: Colors.grey[600]));
  }
}
