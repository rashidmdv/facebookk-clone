import 'package:flutter/material.dart';
import 'package:my_app/sections/headerButtonSection.dart';
import 'package:my_app/sections/roomSections.dart';
import 'package:my_app/sections/statusSection.dart';
import 'package:my_app/sections/storySection.dart';
import 'package:my_app/sections/suggetionSection.dart';
import 'package:my_app/widgets/circularButton.dart';
import 'package:my_app/widgets/headerButton.dart';
import 'package:my_app/widgets/postCard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FaceBook',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'FaceBook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              icon: Icons.search,
              onIconPress: () {
                print('Search button pressed');
              },
            ),
            CircularButton(
              icon: Icons.message,
              onIconPress: () {
                print('Search button pressed');
              },
            ),
            SizedBox(width: 20),
          ],
        ),
        body: ListView(
          children: [
            SizedBox(height: 10),
            StatusSection(),
            Divider(thickness: 1, color: Colors.grey[300]),
            HeaderButtonSection(
              buttonOne: headerButton(
                btnText: "Live",
                icon: Icons.video_call,
                btnAction: () {
                  print("live clicked");
                },
                color: Colors.red,
              ),
              buttonTwo: headerButton(
                btnText: "Photos",
                icon: Icons.photo,
                btnAction: () {
                  print("Photos clicked");
                },
                color: Colors.green,
              ),
              buttonThree: headerButton(
                btnText: "Room",
                icon: Icons.room,
                btnAction: () {
                  print("room clicked");
                },
                color: Colors.purple,
              ),
            ),
            Divider(thickness: 10, color: Colors.grey[300]),
            RoomSections(),
            Divider(thickness: 10, color: Colors.grey[300]),
            StorySection(),
            Divider(thickness: 10, color: Colors.grey[300]),
            PostCard(
              name: "Rashid",
              avatar: 'assets/img/person_2.jpg',
              time: '5h',
              postTitle: "Happy Birthday!!",
            ),
            Divider(thickness: 10, color: Colors.grey[300]),
            SuggetionSection(),
            Divider(thickness: 10, color: Colors.grey[300]),
            PostCard(
              name: "Vinai",
              avatar: 'assets/img/person_2.jpg',
              time: '8h',
              postTitle:
                  "nothing added to commit but untracked files present (use git add to track)",
            ),
          ],
        ),
      ),
    );
  }
}
