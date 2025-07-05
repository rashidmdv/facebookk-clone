import 'package:flutter/material.dart';
import 'package:my_app/sections/headerButtonSection.dart';
import 'package:my_app/sections/roomSections.dart';
import 'package:my_app/sections/statusSection.dart';
import 'package:my_app/sections/storySection.dart';
import 'package:my_app/widgets/circularButton.dart';

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
            HeaderButtonSection(),
            Divider(thickness: 10, color: Colors.grey[300]),
            RoomSections(),
            Divider(thickness: 10, color: Colors.grey[300]),
            StorySection(),
            Divider(thickness: 10, color: Colors.grey[300]),
          ],
        ),
      ),
    );
  }
}
