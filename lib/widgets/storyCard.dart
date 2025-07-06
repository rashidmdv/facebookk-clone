import 'package:flutter/material.dart';
import 'package:my_app/widgets/avatar.dart';
import 'package:my_app/widgets/circularButton.dart';

class StoryCard extends StatelessWidget {
  final String storyTitle;
  final String story;
  final String avatar;
  final bool createStoryBtn;

  const StoryCard({
    super.key,
    required this.storyTitle,
    required this.story,
    required this.avatar,
    this.createStoryBtn = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: createStoryBtn
                ? CircularButton(
                    icon: Icons.add,
                    iconColor: Colors.blue,
                    onIconPress: () {
                      print("story added button clicked");
                    },
                  )
                : Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    displayBorder: true,
                    avatarHeight: 30,
                    avatarWidth: 30,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              storyTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
