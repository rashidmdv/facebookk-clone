import 'package:flutter/material.dart';
import 'package:my_app/widgets/suggetionCard.dart';

class SuggetionSection extends StatelessWidget {
  const SuggetionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            title: Text('People may know you....'),
            trailing: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ),
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [SuggetionCard()],
            ),
          ),
        ],
      ),
    );
  }
}
