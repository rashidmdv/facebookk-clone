import 'package:flutter/material.dart';
import 'package:my_app/widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            storyTitle: "Add a story",
            story: "assets/img/person_2.jpg",
            avatar: "assets/img/person_2.jpg",
            createStoryBtn: true,
          ),
          StoryCard(
            storyTitle: "Jhonson",
            story: "assets/img/person_2.jpg",
            avatar: "assets/img/person_2.jpg",
          ),
          StoryCard(
            storyTitle: "Jhonson",
            story: "assets/img/person_2.jpg",
            avatar: "assets/img/person_2.jpg",
          ),
          StoryCard(
            storyTitle: "Jhonson",
            story: "assets/img/person_2.jpg",
            avatar: "assets/img/person_2.jpg",
          ),
        ],
      ),
    );
  }
}
